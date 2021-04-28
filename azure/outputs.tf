output "azure_instance_name" {
    description = "Print Azure instance(s) name(s) and public IP addess(es)."
    value = [
        azurerm_linux_virtual_machine.az_vm.*.name,
        azurerm_linux_virtual_machine.az_vm.*.public_ip_address
    ]
    sensitive = false
}