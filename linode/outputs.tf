output "linode_instance_name" {
    description = "Print Linode instance(s) name(s) and public IP addess(es)."
    value = [
        linode_instance.instance.*.label,
        linode_instance.instance.*.ip_address
    ]
}