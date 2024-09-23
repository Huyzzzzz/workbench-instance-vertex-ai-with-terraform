provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "tf-state-workbence-instances"
    prefix = "workbence-instance-network/state"
  }
}

module "network" {
  source           = "../../common_modules/network"
  module_name      = "workbench-network"
  vpc_network_name = var.vpc_network_name
  project_id       = var.project_id
  region           = var.region
}