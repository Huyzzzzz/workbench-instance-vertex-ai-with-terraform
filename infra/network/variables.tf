variable "module_name" {
    type = string
}

variable "project_id" {
    type = string
}

variable "region" {
    type = string
}

# Network variables
variable "vpc_network_name" {
    type = string
}

variable "subnet" {
    type = string
    default = "10.1.0.0/24"
}