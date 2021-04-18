variable "user_name" {
    description = "New user name."
    default = ""
}

variable "user_password" {
    description = "Password for the new user."
    default = ""
    sensitive = true
}

variable "port" {
    description = "SSH port."
    default = ""
    sensitive = true
}

variable "public_ip" {
    description = "Set public IP that will be allowed to connect to VM."
    default = ""
    sensitive = true
}