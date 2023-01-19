output "dataset" {
  value       = { for dataset in var.dataset_name : dataset => google_bigquery_dataset.main[dataset].id }
  description = "The ID of the dataset"
}
