provider "azurerm" {
  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_tenant_id
  features {}
}

resource "azurerm_resource_group" "az_resource_group" {
  name     = "${var.resource_group}-resource-group"
  location = var.resource_group_location
}

resource "azurerm_virtual_network" "az_virtual_network" {
  name                = "${var.virtual_network}-virtual-network"
  address_space       = [var.address_space]
  location            = azurerm_resource_group.az_resource_group.location
  resource_group_name = azurerm_resource_group.az_resource_group.name
}

resource "azurerm_subnet" "az_subnet" {
  name                 = "${var.subnet}-subnet"
  resource_group_name  = azurerm_resource_group.az_resource_group.name
  virtual_network_name = azurerm_virtual_network.az_virtual_network.name
  address_prefixes     = [var.subnet_prefixes]
}

resource "azurerm_network_interface" "az_network_interface" {
  count               = var.numbers
  name                = "${var.network_interface}-network-interface-${count.index + 1}"
  location            = azurerm_resource_group.az_resource_group.location
  resource_group_name = azurerm_resource_group.az_resource_group.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.az_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.azure_public_ip[count.index].id
  }
}

resource "azurerm_public_ip" "azure_public_ip" {
  count               = var.numbers
  name                = "${var.public_ip}-public-ip-${count.index + 1}"
  location            = azurerm_resource_group.az_resource_group.location
  resource_group_name = azurerm_resource_group.az_resource_group.name
  allocation_method   = "Dynamic"
}

resource "azurerm_network_security_group" "azure_network_security_group" {
  name                = "${var.network_security_group}-network-security-group"
  location            = azurerm_resource_group.az_resource_group.location
  resource_group_name = azurerm_resource_group.az_resource_group.name

  security_rule {
    name                       = "ssh-port"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = 22
    source_address_prefix      = var.my_public_ip
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface_security_group_association" "azure_network_security_group_association" {
  count                     = var.numbers
  network_interface_id      = azurerm_network_interface.az_network_interface[count.index].id
  network_security_group_id = azurerm_network_security_group.azure_network_security_group.id
}

resource "azurerm_ssh_public_key" "azure_ssh_key" {
  name                = "my-ssh-key"
  resource_group_name = azurerm_resource_group.az_resource_group.name
  location            = azurerm_resource_group.az_resource_group.location
  public_key          = file(var.ssh_azure_key)
}

resource "azurerm_linux_virtual_machine" "az_vm" {
  count                           = var.numbers
  name                            = "${var.virtual_machine.name}-${count.index + 1}"
  resource_group_name             = azurerm_resource_group.az_resource_group.name
  location                        = azurerm_resource_group.az_resource_group.location
  size                            = var.virtual_machine.size
  admin_username                  = var.virtual_machine_username
  disable_password_authentication = true
  network_interface_ids           = [azurerm_network_interface.az_network_interface[count.index].id, ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

  admin_ssh_key {
    username   = var.virtual_machine_username
    public_key = azurerm_ssh_public_key.azure_ssh_key.public_key
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}