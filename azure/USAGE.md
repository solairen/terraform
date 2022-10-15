# Usage

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| azurerm | 2.56.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | 2.56.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [azurerm_linux_virtual_machine](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/linux_virtual_machine) |
| [azurerm_network_interface](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/network_interface) |
| [azurerm_network_interface_security_group_association](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/network_interface_security_group_association) |
| [azurerm_network_security_group](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/network_security_group) |
| [azurerm_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/public_ip) |
| [azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/resource_group) |
| [azurerm_ssh_public_key](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/ssh_public_key) |
| [azurerm_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/subnet) |
| [azurerm_virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/virtual_network) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| address\_space | Azure virtual network address space. | `string` | n/a | yes |
| azure\_subscription\_id | Azure subscription ID. | `string` | n/a | yes |
| azure\_tenant\_id | Azure tenant ID. | `string` | n/a | yes |
| my\_public\_ip | Set public ip that will be able to connect to virtual machine. | `string` | n/a | yes |
| network\_interface | Create Azure network interface. | `string` | n/a | yes |
| network\_security\_group | Create Azure network security group. | `string` | n/a | yes |
| numbers | How many Azure virtual machines create. | `number` | `1` | no |
| public\_ip | Create Azure public ip. | `string` | n/a | yes |
| resource\_group | Create Azure resource group. | `string` | n/a | yes |
| resource\_group\_location | Set Azure resource group location. | `string` | n/a | yes |
| ssh\_azure\_key | Create Azure ssh key. | `string` | n/a | yes |
| ssh\_private\_key | Use private ssh key to connect to virtual machine. | `string` | n/a | yes |
| subnet | Create Azure subnet. | `string` | n/a | yes |
| subnet\_prefixes | Azure subnet prefixes. | `string` | n/a | yes |
| virtual\_machine | Create Azure virtual machine. | <pre>object({<br>        name = string<br>        size = string<br>    })</pre> | n/a | yes |
| virtual\_machine\_username | Create Azure virtual machine username and password. | `string` | n/a | yes |
| virtual\_network | Create Azure virtual network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| azure\_instance\_name | Print Azure instance(s) name(s) and public IP addess(es). |

<!--- END_TF_DOCS --->


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 2.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.56.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.az_vm](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.az_network_interface](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.azure_network_security_group_association](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.azure_network_security_group](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.azure_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.az_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/resource_group) | resource |
| [azurerm_ssh_public_key.azure_ssh_key](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/ssh_public_key) | resource |
| [azurerm_subnet.az_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.az_virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/2.56.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | Azure virtual network address space. | `string` | n/a | yes |
| <a name="input_azure_subscription_id"></a> [azure\_subscription\_id](#input\_azure\_subscription\_id) | Azure subscription ID. | `string` | n/a | yes |
| <a name="input_azure_tenant_id"></a> [azure\_tenant\_id](#input\_azure\_tenant\_id) | Azure tenant ID. | `string` | n/a | yes |
| <a name="input_my_public_ip"></a> [my\_public\_ip](#input\_my\_public\_ip) | Set public ip that will be able to connect to virtual machine. | `string` | n/a | yes |
| <a name="input_network_interface"></a> [network\_interface](#input\_network\_interface) | Create Azure network interface. | `string` | n/a | yes |
| <a name="input_network_security_group"></a> [network\_security\_group](#input\_network\_security\_group) | Create Azure network security group. | `string` | n/a | yes |
| <a name="input_numbers"></a> [numbers](#input\_numbers) | How many Azure virtual machines create. | `number` | `1` | no |
| <a name="input_public_ip"></a> [public\_ip](#input\_public\_ip) | Create Azure public ip. | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Create Azure resource group. | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Set Azure resource group location. | `string` | n/a | yes |
| <a name="input_ssh_azure_key"></a> [ssh\_azure\_key](#input\_ssh\_azure\_key) | Create Azure ssh key. | `string` | n/a | yes |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | Create Azure subnet. | `string` | n/a | yes |
| <a name="input_subnet_prefixes"></a> [subnet\_prefixes](#input\_subnet\_prefixes) | Azure subnet prefixes. | `string` | n/a | yes |
| <a name="input_virtual_machine"></a> [virtual\_machine](#input\_virtual\_machine) | Create Azure virtual machine. | <pre>object({<br>    name = string<br>    size = string<br>  })</pre> | n/a | yes |
| <a name="input_virtual_machine_username"></a> [virtual\_machine\_username](#input\_virtual\_machine\_username) | Create Azure virtual machine username and password. | `string` | n/a | yes |
| <a name="input_virtual_network"></a> [virtual\_network](#input\_virtual\_network) | Create Azure virtual network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_instance_name"></a> [azure\_instance\_name](#output\_azure\_instance\_name) | Print Azure instance(s) name(s) and public IP addess(es). |
<!-- END_TF_DOCS -->