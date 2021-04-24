provider "aws" {
  region = var.aws_region
  access_key = var.aws_access
  secret_key = var.aws_secret
}

resource "aws_instance" "ec2_instance" {
    count = var.aws_instance_number
    ami = var.ami_type
    instance_type = var.aws_instance_type
    tags = {
        Name = "${var.aws_instance_tag}-${count.index + 1}"
    }
    key_name = var.aws_ssh_key_pairs
}