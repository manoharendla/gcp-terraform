output "name" {
    value = data.google_compute_network.network
}

output "subnetwork" {
    value = data.google_compute_subnetwork.subnetwork
}
