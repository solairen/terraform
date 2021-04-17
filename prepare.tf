variable "user_name" {
    description = "New user name."
    default = ""
}

variable "user_password" {
    description = "Password for the new user."
    default = ""
    sensitive = true
}