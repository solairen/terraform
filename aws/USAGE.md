# Usage

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| aws | 3.37.0 |

## Providers

| Name | Version |
|------|---------|
| aws | 3.37.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_instance](https://registry.terraform.io/providers/hashicorp/aws/3.37.0/docs/resources/instance) |
| [aws_key_pair](https://registry.terraform.io/providers/hashicorp/aws/3.37.0/docs/resources/key_pair) |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/3.37.0/docs/resources/security_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami\_type | AMI name. | `string` | `"ami-0c960b947cbb2dd16"` | no |
| aws\_access | AWS Access Key. | `string` | n/a | yes |
| aws\_instance\_number | How many EC2 instances create. | `number` | `1` | no |
| aws\_instance\_tag | EC2 instance tag. | `string` | n/a | yes |
| aws\_instance\_type | EC2 instance type. | `string` | `"t2.micro"` | no |
| aws\_region | AWS region. | `string` | `"eu-central-1"` | no |
| aws\_secret | AWS Secret Key. | `string` | n/a | yes |
| aws\_sg\_name | Set AWS Security Group name. | `string` | n/a | yes |
| my\_public\_ip | Set public ip that will be able to connect to virtual machine. | `string` | n/a | yes |
| ssh\_aws\_key | Create AWS ssh key. | `string` | n/a | yes |
| ssh\_aws\_key\_name | Set AWS ssh key name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ec2\_instance\_name | Print EC2 instance(s) name(s) and public IP addess(es). |

<!--- END_TF_DOCS --->

