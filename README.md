### About:
This terraform script creates Virtual Machine (s) and installs Docker on those Cloud providers:
* Azure
* AWS
* Linode

If **Linode** will be used it will add port **22** to the firewall (or another if it will be given in **terraform.tfvars**), disable **password authentication**, and disable **root login**. Also, it will create a new **user** and add it to the **sudo**.

If **Azure** will be used it will disable **root login** and add **user** to **docker** group.

If **AWS** will be used it will disable **root login** and add **ubuntu** (default) user to **docker** group.

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
In each folder, there is a **USAGE.md** file which contains the variables that need to be added to the **terraform.tfvars** file.

**Lindoe example usage:**

``` vars
token = ""
instance_name = ""
root_pass = ""
ssh_keys = ""
new_user = {name = "", password = ""}
port =
public_ip = ""
os_system = ""
region = ""
type = ""
tags = ""
numbers = 1
```


``` bash
terraform init
terraform plan
terraform apply
```