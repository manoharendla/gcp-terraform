resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "unitymanotf${random_string.naming.result}"
}

resource "google_storage_bucket" "unity_metastore" {
  name          = "${local.prefix}-metastore"
  location      = var.google_region
  force_destroy = true
}


resource "databricks_metastore" "this" {
  provider      = databricks.accounts
  name          = "primary"
  region        = var.google_region
  storage_root  = "gs://${google_storage_bucket.unity_metastore.name}"
  force_destroy = true
}

resource "databricks_metastore_data_access" "first" {
  provider     = databricks.accounts
  metastore_id = databricks_metastore.this.id
  databricks_gcp_service_account {}
  name       = "the-keys"
  is_default = true
}

resource "google_storage_bucket_iam_member" "unity_sa_admin" {
  bucket = google_storage_bucket.unity_metastore.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${databricks_metastore_data_access.first.databricks_gcp_service_account[0].email}"
}

resource "google_storage_bucket_iam_member" "unity_sa_reader" {
  bucket = google_storage_bucket.unity_metastore.name
  role   = "roles/storage.legacyBucketReader"
  member = "serviceAccount:${databricks_metastore_data_access.first.databricks_gcp_service_account[0].email}"
}

resource "databricks_metastore_assignment" "this" {
  provider             = databricks.accounts
  workspace_id         = var.databricks_workspace_id
  metastore_id         = databricks_metastore.this.id
  default_catalog_name = "hive_metastore"
}