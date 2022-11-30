## Optional 
variable "dataset_name" {
  description = "A unique IDs for datasets"
  type        = set(string)
}

variable "location" {
  description = "The geographic location where the dataset and bucket be located (for the main GCP project)"
  type        = string
}

variable "product_base_name" {
  description = "Cloud resources base name (used to create services)"
  type        = string
}

variable "env" {
  description = "Variable to mark the environment of the resource (used to create services)."
  type        = string
}

variable "delete_data" {
  description = "If set to true, delete all tables in the dataset when the resource is destroying "
  type        = bool
  default     = true
}

variable "labels" {
  description = "The labels associated with this dataset. You can use these to organize and group your datasets"
  type        = map(string)
  default     = {}
}
