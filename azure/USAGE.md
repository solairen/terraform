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
| numbers | How many Azure virtual machines create. | `number` | `1` | no |
| public\_ip | Create Azure public ip. | `string` | n/a | yes |
| resource\_group | Create Azure resource group. | `string` | n/a | yes |
| resource\_group\_location | Set Azure resource group location. | `string` | n/a | yes |
| ssh\_azure\_key | Create Azure ssh key. | `string` | n/a | yes |
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

