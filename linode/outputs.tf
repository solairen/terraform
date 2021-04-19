output "linode_instance_name" {
    value = [
        linode_instance.instance.*.label,
        linode_instance.instance.*.ip_address
    ]
}