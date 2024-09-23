terraform {
  backend "gcs" {
    bucket = "tf-state-workbence-instances"
    prefix = "workbence-instance-vertex-ai/state"
  }
}

data "google_compute_network" "workbench_instance_network" {
  name    = var.vpc_network_name
  project = var.project_id
}

data "google_compute_subnetwork" "workbench_instance_subnetwork" {
  name   = format("%s-vertex-subnet", var.vpc_network_name)
  region = var.region
}

resource "google_workbench_instance" "instance" {
  count    = var.isDeleted 
  name     = join("-", [var.workbench_instance_prefix_name, "${replace(var.instance_owner_email, "@quanghuy.site", "")}"])
  location = var.zone

  desired_state        = "ACTIVE"
  disable_proxy_access = false

  instance_owners = [var.instance_owner_email]

  gce_setup {
    machine_type = var.machine_type

    data_disks {
      disk_type    = var.data_disk_type
      disk_size_gb = var.data_disk_size_gb
    }

    boot_disk {
      disk_type    = var.boot_disk_type
      disk_size_gb = var.boot_disk_size_gb
    }

    network_interfaces {
      network = data.google_compute_network.workbench_instance_network.id
      subnet  = data.google_compute_subnetwork.workbench_instance_subnetwork.id
    }
  }
}