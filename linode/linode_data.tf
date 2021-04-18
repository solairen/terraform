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

variable "root_pass" {
    description = "Root password for Linode instance."
    type = string
    sensitive = true
}

variable "tags" {
    description = "Create a tag"
    type = string
}