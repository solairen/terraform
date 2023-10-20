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


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.21 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.aws_ssh_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_security_group.aws_vpc_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | AMI name. | `string` | `"ami-0c960b947cbb2dd16"` | no |
| <a name="input_aws_access"></a> [aws\_access](#input\_aws\_access) | AWS Access Key. | `string` | n/a | yes |
| <a name="input_aws_instance_number"></a> [aws\_instance\_number](#input\_aws\_instance\_number) | How many EC2 instances create. | `number` | `1` | no |
| <a name="input_aws_instance_tag"></a> [aws\_instance\_tag](#input\_aws\_instance\_tag) | EC2 instance tag. | `string` | n/a | yes |
| <a name="input_aws_instance_type"></a> [aws\_instance\_type](#input\_aws\_instance\_type) | EC2 instance type. | `string` | `"t2.micro"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region. | `string` | `"eu-central-1"` | no |
| <a name="input_aws_secret"></a> [aws\_secret](#input\_aws\_secret) | AWS Secret Key. | `string` | n/a | yes |
| <a name="input_aws_sg_name"></a> [aws\_sg\_name](#input\_aws\_sg\_name) | Set AWS Security Group name. | `string` | n/a | yes |
| <a name="input_my_public_ip"></a> [my\_public\_ip](#input\_my\_public\_ip) | Set public ip that will be able to connect to virtual machine. | `string` | n/a | yes |
| <a name="input_ssh_aws_key"></a> [ssh\_aws\_key](#input\_ssh\_aws\_key) | Create AWS ssh key. | `string` | n/a | yes |
| <a name="input_ssh_aws_key_name"></a> [ssh\_aws\_key\_name](#input\_ssh\_aws\_key\_name) | Set AWS ssh key name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_instance_name"></a> [ec2\_instance\_name](#output\_ec2\_instance\_name) | Print EC2 instance(s) name(s) and public IP addess(es). |
<!-- END_TF_DOCS -->