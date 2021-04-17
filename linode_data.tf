variable "token" {
    description = "Token to Linode cloud provider."
    default = ""
    sensitive = true
}

variable "instance_name" {
    description = "Linode instance name."
    default = ""
}

variable "os_system" {
    description = "Linode instance operating system."
    default = "linode/ubuntu20.04"
}

variable "region" {
    description = "Linode region."
    default = "eu-central"
}

variable "type" {
    description = "Linode instance type."
    default = "g6-nanode-1"
}

variable "ssh_keys" {
    description = "SSH keys to login to Linode instance."
    default = ""
    sensitive = true
}

variable "root_pass" {
    description = "Root password for Linode instance."
    default = ""
    sensitive = true
}