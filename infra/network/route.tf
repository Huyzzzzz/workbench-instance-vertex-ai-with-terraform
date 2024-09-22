resource "google_compute_route" "default_internet_gateway" {
  dest_range       = "0.0.0.0/0"
  name             = "${google_compute_network.vpc_network.name}-default-internet-gw"
  network          = google_compute_network.vpc_network.name
  
  project          = var.project_id
  next_hop_gateway = "default-internet-gateway"
  priority         = 1000
}