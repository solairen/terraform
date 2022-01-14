provider "aws" {
  region = var.aws_region
  access_key = var.aws_access
  secret_key = var.aws_secret
}

resource "aws_key_pair" "aws_ssh_key" {
    key_name = var.ssh_aws_key_name
    public_key = var.ssh_aws_key
}

resource "aws_security_group" "aws_vpc_security_group" {
    count = var.aws_instance_number
    name = "${var.aws_sg_name}-security-group-${count.index + 1}"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["${var.my_public_ip}/32"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "ec2_instance" {
    count = var.aws_instance_number
    ami = var.ami_type
    instance_type = var.aws_instance_type
    tags = {
        Name = "${var.aws_instance_tag}-${count.index + 1}"
    }
    key_name = aws_key_pair.aws_ssh_key.id
    security_groups = [ aws_security_group.aws_vpc_security_group[count.index].name ]

    provisioner "remote-exec" {
        connection {
            type = "ssh"
            host = self.public_ip
            user = "ubuntu"
            private_key = file("~/.ssh/id_rsa")
        }
        inline = [
            "sudo apt -y update && sudo apt -y upgrade && sudo apt -y autoremove",
            "sudo apt -y install vim apt-transport-https ca-certificates curl gnupg lsb-release",
            "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg",
            "sudo echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu '$(lsb_release -cs)' stable' | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
            "sudo apt -y update",
            "sudo apt -y install docker-ce docker-ce-cli containerd.io",
            "sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config",
            "sudo systemctl restart sshd",
            "sudo usermod -aG docker ubuntu"
        ]
    }
}