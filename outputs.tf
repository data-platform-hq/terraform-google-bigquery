output "dataset" {
  value       = google_bigquery_dataset.this.id
  description = "The ID of the dataset"
}
