provider "linode" {
  token = var.token
}

resource "linode_firewall" "firewall" {
  label = var.instance_name
  tags  = [var.tags]

  inbound {
    label    = "allow-ssh"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = var.port
    ipv4     = ["${var.public_ip}/32"]
  }

  inbound_policy = "DROP"

  outbound_policy = "ACCEPT"
  linodes         = linode_instance.instance.*.id
}

resource "linode_instance" "instance" {
  count           = var.numbers
  image           = var.os_system
  label           = "${var.instance_name}-${count.index + 1}"
  region          = var.region
  type            = var.type
  root_pass       = var.root_pass
  authorized_keys = [var.ssh_keys]
  tags            = [var.tags]
  private_ip      = true
}
