variable "aws_region" {
  description = "AWS region."
  type = string
  default = "eu-central-1"
  sensitive = false
}

variable "ami_type" {
    description = "AMI name."
    type = string
    default = "ami-0c960b947cbb2dd16"
    sensitive = false
}

variable "aws_instance_type" {
  description = "EC2 instance type."
  type = string
  default = "t2.micro"
  sensitive = false
}

variable "aws_instance_number" {
    description = "How many EC2 instances create."
    type = number
    default = 1
    sensitive = false
}

variable "aws_instance_tag" {
    description = "EC2 instance tag."
    type = string
    sensitive = false
}

variable "aws_ssh_key_pairs" {
    description = "AWS key name."
    type = string
    sensitive = true
}