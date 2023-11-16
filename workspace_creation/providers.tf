provider "google" {
  project = var.google_project_id
  region  = var.google_region
}

provider "databricks" {
  alias                  = "accounts"
  host                   = "https://accounts.gcp.databricks.com"
  google_service_account = var.google_service_account_email
}

provider "databricks" {
  alias                  = "workspace"
  host                   = databricks_mws_workspaces.this.workspace_url
  google_service_account = var.google_service_account_email
}