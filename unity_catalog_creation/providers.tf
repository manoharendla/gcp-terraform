provider "google" {
  project     = var.google_project_id
  region = var.google_region
}

provider "databricks" {
  host = var.databricks_workspace_url
}

provider "databricks" {
  alias      = "accounts"
  host       = "https://accounts.gcp.databricks.com"
  account_id = var.databricks_account_id
}


# provider "databricks" {
#   alias                  = "accounts"
#   host                   = "https://accounts.gcp.databricks.com"
#   google_service_account = var.google_service_account_email
# }