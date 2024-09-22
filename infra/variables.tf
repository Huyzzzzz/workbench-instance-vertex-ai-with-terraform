variable "project_id" {
  type    = string
  default = "terraform-vertex-ai-436014"
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}

variable "zone" {
  type    = string
  default = "asia-southeast1-a"
}

# Network variables
variable "vpc_network_name" {
  type    = string
  default = "quanghuy-network"
}

variable "subnet_ip_cidr_range" {
  type    = string
  default = "10.1.0.0/24"
}