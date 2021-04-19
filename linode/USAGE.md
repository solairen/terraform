# Usage

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| linode | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [linode_instance](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| instance\_name | Linode instance name. | `string` | n/a | yes |
| new\_user | New user name and password. | <pre>object({<br>        name = string<br>        password = string<br>    })</pre> | n/a | yes |
| numbers | How many Linode instances create | `number` | `1` | no |
| os\_system | Linode instance operating system. | `string` | `"linode/ubuntu20.04"` | no |
| port | SSH port. | `number` | `22` | no |
| public\_ip | Set public IP that will be allowed to connect to VM. | `string` | n/a | yes |
| region | Linode region. | `string` | `"eu-central"` | no |
| root\_pass | Root password for Linode instance. | `string` | n/a | yes |
| ssh\_keys | SSH keys to login to Linode instance. | `string` | n/a | yes |
| tags | Create a tag | `string` | n/a | yes |
| token | Token to Linode cloud provider. | `string` | n/a | yes |
| type | Linode instance type. | `string` | `"g6-nanode-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| linode\_instance\_name | n/a |

<!--- END_TF_DOCS --->

