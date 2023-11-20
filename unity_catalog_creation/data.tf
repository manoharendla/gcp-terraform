data "google_compute_network" "network" {
  name = "default"
}

data "google_compute_subnetwork" "subnetwork" {
  name   = "default"
  region = "europe-west2"
}

data "google_iam_policy" "this" {
  binding {
    role    = "roles/iam.serviceAccountTokenCreator"
    members = var.delegate_from
  }
}

data "google_client_config" "current" {}
