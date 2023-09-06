variable "dataset_config" {
  description = "Contains BigQuery datasets name, roles, lists of entities (users, service accounts)"
  type = object({
    name    = string
    viewers = optional(list(string))
    editors = optional(list(string))
    owners  = optional(list(string))
  })
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = ""
}

variable "suffix" {
  description = "Resource name suffix"
  type        = string
  default     = ""
}

variable "location" {
  description = "The geographic location where the dataset and bucket be located (for the main GCP project)"
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
