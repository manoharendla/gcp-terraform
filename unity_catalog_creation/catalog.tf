resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "unitymanotfm${random_string.naming.result}"
}

resource "google_storage_bucket" "unity_metastore" {
  name          = "${local.prefix}-metastore"
  location      = var.google_region
  force_destroy = true
}


resource "databricks_metastore" "this" {
  provider      = databricks.accounts
  name          = var.unity_name
  region        = var.google_region
  storage_root  = "gs://${google_storage_bucket.unity_metastore.name}"
  force_destroy = true
}

resource "databricks_metastore_data_access" "first" {
  provider     = databricks.accounts
  metastore_id = databricks_metastore.this.id
  databricks_gcp_service_account {}
  name       = "mano-metastore-keys"
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

resource "databricks_catalog" "sandbox" {
  provider             = databricks.workspace
  metastore_id = databricks_metastore.this.id
  name         = "sandbox"
  comment      = "this catalog is managed by terraform"
  properties = {
    purpose = "testing"
  }
  depends_on = [databricks_metastore_assignment.this]
}

resource "databricks_grants" "sandbox" {
  provider             = databricks.workspace
  catalog = databricks_catalog.sandbox.name
  grant {
    principal  = "account users"   #Principal value has been found at workspace -> catalog explorer -> main->default->permissions
    privileges = ["USE_CATALOG", "CREATE"]
  }
  # grant {
  #   principal  = "Data Engineers"
  #   privileges = ["USE_CATALOG"]
  # }
}

resource "databricks_schema" "things" {
  provider             = databricks.workspace
  catalog_name = databricks_catalog.sandbox.id
  name         = "things"
  comment      = "this database is managed by terraform"
  properties = {
    kind = "various"
  }
}

resource "databricks_grants" "things" {
  provider             = databricks.workspace
  schema = databricks_schema.things.id
  grant {
    principal  = "account users"
    privileges = ["USE_SCHEMA"]
  }
}