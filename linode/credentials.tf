variable "new_user" {
  description = "New user name and password."
  type = object({
    name     = string
    password = string
  })
  sensitive = true
}

variable "root_pass" {
  description = "Root password for Linode instance."
  type        = string
  sensitive   = true
}