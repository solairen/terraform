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
| instance\_name | Linode instance name. | `string` | `""` | no |
| os\_system | Linode instance operating system. | `string` | `"linode/ubuntu20.04"` | no |
| port | SSH port. | `string` | `""` | no |
| public\_ip | Set public IP that will be allowed to connect to VM. | `string` | `""` | no |
| region | Linode region. | `string` | `"eu-central"` | no |
| root\_pass | Root password for Linode instance. | `string` | `""` | no |
| ssh\_keys | SSH keys to login to Linode instance. | `string` | `""` | no |
| token | Token to Linode cloud provider. | `string` | `""` | no |
| type | Linode instance type. | `string` | `"g6-nanode-1"` | no |
| user\_name | New user name. | `string` | `""` | no |
| user\_password | Password for the new user. | `string` | `""` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

