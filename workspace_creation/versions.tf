terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
      version = "1.29.0"
    }
    google = {
      source = "hashicorp/google"
    }
  }
}
