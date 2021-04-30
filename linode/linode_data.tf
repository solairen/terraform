variable "token" {
    description = "Token to Linode cloud provider."
    type = string
    sensitive = true
}

variable "instance_name" {
    description = "Linode instance name."
    type = string
}

variable "os_system" {
    description = "Linode instance operating system."
    type = string
    default = "linode/ubuntu20.04"
}

variable "region" {
    description = "Linode region."
    type = string
    default = "eu-central"
}

variable "type" {
    description = "Linode instance type."
    type = string
    default = "g6-nanode-1"
}

variable "ssh_keys" {
    description = "SSH keys to login to Linode instance."
    type = string
    sensitive = true
}

variable "port" {
    description = "SSH port."
    type = number
    default = 22
    sensitive = true
}

variable "public_ip" {
    description = "Set public IP that will be allowed to connect to VM."
    type = string
    sensitive = true
}

variable "tags" {
    description = "Create a tag."
    type = string
}

variable "numbers" {
    description = "How many Linode instances create."
    type = number
    default = 1
}