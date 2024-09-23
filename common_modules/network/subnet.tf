resource "google_compute_subnetwork" "workbench_subhet" {
  name                     = format("%s-vertex-subnet", var.vpc_network_name)
  network                  = google_compute_network.vpc_network.id
  description              = "Subnet for user workbench instance"
  region                   = var.region
  ip_cidr_range            = var.subnet
  private_ip_google_access = true
}