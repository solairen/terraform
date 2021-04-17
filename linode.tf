terraform {
  required_providers {
    linode = {
        source = "linode/linode"
    }
  }
}

provider "linode" {
    token = var.token
}

resource "linode_instance" "instance" {
    image = var.os_system
    label = var.instance_name
    region = var.region
    type = var.type
    root_pass = var.root_pass
    authorized_keys = [ var.ssh_keys ]

    provisioner "remote-exec" {
        connection {
            type = "ssh"
            host = self.ip_address
            user = "root"
            password = var.root_pass
        }
        inline = [
            "useradd ${var.user_name} --create-home --shell /bin/bash --groups sudo",
            "echo ${var.user_name}:${var.user_password} | chpasswd",
            "mkdir /home/${var.user_name}/.ssh",
            "cp ~/.ssh/authorized_keys /home/${var.user_name}/.ssh",
            "chown -R ${var.user_name}:${var.user_name} /home/${var.user_name}/.ssh"
        ]
    }
}