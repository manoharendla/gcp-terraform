provider "google" {
  project     = var.google_project_id
  region = var.google_region
}

provider "databricks" {
  alias                  = "accounts"
  host                   = "https://accounts.gcp.databricks.com"
  google_service_account = var.google_service_account_email
  account_id = "b64034d7-8e08-4472-a2e9-60f126a55bfc"
}

provider "databricks" {
  alias                  = "workspace"
  host                   = var.databricks_workspace_url
  google_service_account = var.google_service_account_email
}