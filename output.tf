output "raw_dataset" {
  value       = google_bigquery_dataset.main["raw"].id
  description = "raw dataset id"
}

output "raw_dp_dataset" {
  value       = google_bigquery_dataset.main["raw_dp"].id
  description = "raw_dp dataset id"
}

output "refined_dataset" {
  value       = google_bigquery_dataset.main["refined"].id
  description = "refined dataset id"
}

output "data_product_dataset" {
  value       = google_bigquery_dataset.main["data_product"].id
  description = "data_product dataset id"
}

output "data_product_dp_dataset" {
  value       = google_bigquery_dataset.main["data_product_dp"].id
  description = "data_product_dp dataset id"
}


