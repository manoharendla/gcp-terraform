data "google_compute_network" "network" {
  name = "default"
}

data "google_compute_subnetwork" "subnetwork" {
  name   = "default"
  region = "europe-west2"
}