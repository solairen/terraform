variable "resource_group" {
  description = "Create Azure resource group."
  type        = string
  sensitive   = false
}

variable "resource_group_location" {
  description = "Set Azure resource group location."
  type        = string
  sensitive   = false
}

variable "virtual_network" {
  description = "Create Azure virtual network."
  type        = string
  sensitive   = false
}

variable "address_space" {
  description = "Azure virtual network address space."
  type        = string
  sensitive   = false
}

variable "subnet" {
  description = "Create Azure subnet."
  type        = string
  sensitive   = false
}

variable "subnet_prefixes" {
  description = "Azure subnet prefixes."
  type        = string
  sensitive   = false
}

variable "public_ip" {
  description = "Create Azure public ip."
  type        = string
  sensitive   = false
}

variable "virtual_machine" {
  description = "Create Azure virtual machine."
  type = object({
    name = string
    size = string
  })
  sensitive = false
}

variable "virtual_machine_username" {
  description = "Create Azure virtual machine username and password."
  type        = string
  sensitive   = false
}

variable "ssh_azure_key" {
  description = "Create Azure ssh key."
  type        = string
  sensitive   = true
}

variable "ssh_private_key" {
  description = "Use private ssh key to connect to virtual machine."
  type        = string
  sensitive   = true
}

variable "my_public_ip" {
  description = "Set public ip that will be able to connect to virtual machine."
  type        = string
  sensitive   = false
}

variable "numbers" {
  description = "How many Azure virtual machines create."
  type        = number
  sensitive   = false
  default     = 1
}

variable "network_security_group" {
  description = "Create Azure network security group."
  type        = string
  sensitive   = false
}

variable "network_interface" {
  description = "Create Azure network interface."
  type        = string
  sensitive   = false
}
