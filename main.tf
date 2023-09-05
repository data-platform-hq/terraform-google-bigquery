locals {
  prefix = length(var.prefix) == 0 ? "" : "${var.prefix}-"
  env    = length(var.env) == 0 ? "" : "${var.env}-"
  suffix = length(var.suffix) == 0 ? "" : "-${var.suffix}"

  bq_dataset_id = replace("${local.prefix}${local.env}${var.dataset_config.name}${local.suffix}", "-", "_")

  dataset_viewers = [for entity in flatten(var.dataset_config[*].viewers) : {
    entity = entity
    role   = "roles/bigquery.dataViewer"
  }]

  dataset_editors = [for entity in flatten(var.dataset_config[*].editors) : {
    entity = entity
    role   = "roles/bigquery.dataEditor"
  }]

  dataset_owners = [for entity in flatten(var.dataset_config[*].owners) : {
    entity = entity
    role   = "roles/bigquery.dataOwner"
  }]

  acls_mapping = tomap({
    for acl in concat(local.dataset_viewers, local.dataset_editors, local.dataset_owners) :
    "${acl.role}:${acl.entity}" => acl if acl.entity != null
  })
}

resource "google_bigquery_dataset" "this" {
  dataset_id                 = local.bq_dataset_id
  location                   = var.location
  delete_contents_on_destroy = var.delete_data

  labels = var.labels
}

resource "google_bigquery_dataset_access" "this" {
  for_each      = local.acls_mapping

  dataset_id    = google_bigquery_dataset.this.dataset_id
  role          = each.value.role
  user_by_email = each.value.entity
}
