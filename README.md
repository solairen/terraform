### About:
This terraform script creates Virtual Machine(s) on those Cloud providers:
* Azure
* AWS
* Linode

### Prerequisities:
#### Linode
* Token

#### AWS
* Access Keys
* Secret Keys

#### Azure
* Subscription ID
* Tenant ID
* Azure CLI

### Usage
In each folder there is a **USAGE.md** file which contains the variables that need to be added to the **terraform.tfvars** file.

**Lindoe example usage:**

```vars
token = ""
instance_name = ""
root_pass = ""
ssh_keys = ""
new_user = { name="",password="" }
port = 
public_ip = ""
os_system = ""
region = ""
type = ""
tags = ""
numbers = 1
```


```bash
terraform init
terraform plan
terraform apply
```