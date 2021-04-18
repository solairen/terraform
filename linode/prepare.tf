variable "new_user" {
    description = "New user name and password."
    type = object({
        name = string
        password = string
    })
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