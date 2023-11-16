variable "google_region" {
  description = "Name of the google region"
  type        = string
  default     = "europe-west2"
}

variable "google_project_id" {
  description = "Name of the gcp project"
  type        = string
  default     = "databricks-automation"
}

variable "google_service_account_email" {
  description = "Name of the gcp project"
  type        = string
}

variable "databricks_account_id" {
  description = "ID of the databricks account"
  type        = string
}

variable "databricks_workspace_name" {
  description = "Name of the workspace to be created"
  type        = string
}
