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

    provisioner "remote-exec" {
        connection {
            type = "ssh"
            host = self.ip_address
            user = "root"
            password = var.root_pass
        }
        inline = [
            ""
        ]
    }
}