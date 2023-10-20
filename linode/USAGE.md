# Usage

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| linode | 1.16.0 |

## Providers

| Name | Version |
|------|---------|
| linode | 1.16.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [linode_firewall](https://registry.terraform.io/providers/linode/linode/1.16.0/docs/resources/firewall) |
| [linode_instance](https://registry.terraform.io/providers/linode/linode/1.16.0/docs/resources/instance) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| instance\_name | Linode instance name. | `string` | n/a | yes |
| new\_user | New user name and password. | <pre>object({<br>        name = string<br>        password = string<br>    })</pre> | n/a | yes |
| numbers | How many Linode instances create. | `number` | `1` | no |
| os\_system | Linode instance operating system. | `string` | `"linode/ubuntu20.04"` | no |
| port | SSH port. | `number` | `22` | no |
| public\_ip | Set public IP that will be allowed to connect to VM. | `string` | n/a | yes |
| region | Linode region. | `string` | `"eu-central"` | no |
| root\_pass | Root password for Linode instance. | `string` | n/a | yes |
| ssh\_keys | SSH keys to login to Linode instance. | `string` | n/a | yes |
| tags | Create a tag. | `string` | n/a | yes |
| token | Token to Linode cloud provider. | `string` | n/a | yes |
| type | Linode instance type. | `string` | `"g6-nanode-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| linode\_instance\_name | Print Linode instance(s) name(s) and public IP addess(es). |

<!--- END_TF_DOCS --->


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | ~> 2.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | ~> 2.9 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_firewall.firewall](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/firewall) | resource |
| [linode_instance.instance](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Linode instance name. | `string` | n/a | yes |
| <a name="input_numbers"></a> [numbers](#input\_numbers) | How many Linode instances create. | `number` | `1` | no |
| <a name="input_os_system"></a> [os\_system](#input\_os\_system) | Linode instance operating system. | `string` | `"linode/ubuntu22.04"` | no |
| <a name="input_port"></a> [port](#input\_port) | SSH port. | `number` | `22` | no |
| <a name="input_public_ip"></a> [public\_ip](#input\_public\_ip) | Set public IP that will be allowed to connect to VM. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Linode region. | `string` | `"eu-central"` | no |
| <a name="input_root_pass"></a> [root\_pass](#input\_root\_pass) | Root password for Linode instance. | `string` | n/a | yes |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | SSH keys to login to Linode instance. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Create a tag. | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | Token to Linode cloud provider. | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Linode instance type. | `string` | `"g6-nanode-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_linode_instance_name"></a> [linode\_instance\_name](#output\_linode\_instance\_name) | Print Linode instance(s) name(s) and public IP addess(es). |
<!-- END_TF_DOCS -->