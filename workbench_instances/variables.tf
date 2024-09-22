variable "project_id" {
  description = "Your Project ID"
  type        = string
  default     = "terraform-vertex-ai-436014"
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}

variable "zone" {
  type    = string
  default = "asia-southeast1-a"
}

variable "workbench_instance_prefix_name" {
  type    = string
  default = "workbench-instance-vertex-ai"
}
variable "isDeleted" {
  type    = bool
  default = false
}

variable "instance_owner_email" {
  description = "The owner of the workbence instance after creating by user email."
  type        = string
}

variable "machine_type" {
  type    = string
  default = "e2-standard-2"
}

variable "data_disk_type" {
  type    = string
  default = "PD_STANDARD"
}

variable "data_disk_size_gb" {
  type    = number
  default = 100
}

variable "boot_disk_type" {
  type    = string
  default = "PD_STANDARD"
}

variable "boot_disk_size_gb" {
  type    = number
  default = 150
}

variable "vpc_network_name" {
  type    = string
  default = "quanghuy-network"
}