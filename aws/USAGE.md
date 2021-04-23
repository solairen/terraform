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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami\_type | AMI name. | `string` | `"ami-0c960b947cbb2dd16"` | no |
| aws\_access | AWS Access Key. | `string` | n/a | yes |
| aws\_instance\_number | How many EC2 instances create. | `number` | `1` | no |
| aws\_instance\_type | EC2 instance type. | `string` | `"t2.micro"` | no |
| aws\_instnce\_tag | EC2 instance tag. | `string` | n/a | yes |
| aws\_region | AWS region. | `string` | `"eu-central-1"` | no |
| aws\_secret | AWS Secret Key. | `string` | n/a | yes |
| aws\_ssh\_key\_pairs | AWS key name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ec2\_instance\_name | Print EC2 instance(s) name(s) and public IP addess(es). |

<!--- END_TF_DOCS --->

