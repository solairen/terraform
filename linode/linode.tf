terraform {
  required_providers {
    linode = {
        source = "linode/linode"
        version = "1.16.0"
    }
  }
}

provider "linode" {
    token = var.token
}

resource "linode_instance" "instance" {
    count = var.numbers
    image = var.os_system
    label = "${var.instance_name}-${count.index + 1}"
    region = var.region
    type = var.type
    root_pass = var.root_pass
    authorized_keys = [ var.ssh_keys ]
    tags = [ var.tags ]
    private_ip = true

    provisioner "remote-exec" {
        connection {
            type = "ssh"
            host = self.ip_address
            user = "root"
            password = var.root_pass
        }
        inline = [
            "apt -y update && apt -y upgrade && apt -y autoremove",
            "apt -y install vim apt-transport-https ca-certificates curl gnupg lsb-release",
            "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg",
            "echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu '$(lsb_release -cs)' stable' | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
            "apt -y update",
            "apt -y install docker-ce docker-ce-cli containerd.io",
            "useradd ${var.new_user.name} --create-home --shell /bin/bash --groups sudo,docker",
            "echo ${var.new_user.name}:${var.new_user.password} | chpasswd",
            "mkdir /home/${var.new_user.name}/.ssh",
            "cp ~/.ssh/authorized_keys /home/${var.new_user.name}/.ssh",
            "chown -R ${var.new_user.name}:${var.new_user.name} /home/${var.new_user.name}/.ssh",
            "sed -i 's/#Port 22/Port ${var.port}/g' /etc/ssh/sshd_config",
            "sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config",
            "sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config",
            "systemctl restart sshd",
            "hostnamectl set-hostname ${self.label}",
            "echo '{  \"iptables\": false  }' > /etc/docker/daemon.json && systemctl restart docker",
            "echo 'y' | ufw enable && ufw allow from ${var.public_ip} to any port ${var.port} && ufw reload"
        ]
    }
}