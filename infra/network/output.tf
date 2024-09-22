output "vpc_id" {
  value = google_compute_network.vpc_network.id
}

output "vpc_subnet_id" {
  value = google_compute_subnetwork.workbench_subhet.id
}