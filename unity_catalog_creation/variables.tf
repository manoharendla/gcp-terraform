variable "delegate_from" {
  description = "Allow either user:user.name@example.com, group:deployers@example.com, or serviceAccount:sa1@project.iam.gserviceaccount.com to impersonate the created service account."
  type        = list(string)
}

variable "google_project_id" {
  description = "Name of the gcp project"
  type        = string
}

variable "google_region" {
  description = "Name of the google region"
  type        = string
  default     = "europe-west2"
}

variable "google_service_account_email" {
  description = "Name of the gcp project"
  type        = string
}

variable "databricks_account_id" {
  description = "ID of the databricks account"
  type        = string
  default = "b64034d7-8e08-4472-a2e9-60f126a55bfc"
}

variable "databricks_workspace_name" {
  description = "Name of the workspace to be created"
  type        = string
}

variable "databricks_workspace_url" {
  description = "workspace url"
  type        = string
}

variable "databricks_workspace_id" {
  description = "ID of the databricks workspace"
  type        = string
}
