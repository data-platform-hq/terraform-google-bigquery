resource "google_bigquery_dataset" "main" {
  for_each = var.dataset_name

  dataset_id                 = replace("${var.env}-${var.product_base_name}-${each.key}", "-", "_")
  location                   = var.location
  delete_contents_on_destroy = var.delete_data

  labels = var.labels
}
