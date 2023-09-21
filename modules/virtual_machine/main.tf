resource "azurerm_resource_group" "rgrk" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_virtual_network" "vnrk" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subrk" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}

resource "azurerm_network_interface" "nicrk" {
  name                = var.network_interface_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation   
  }
}

resource "azurerm_windows_virtual_machine" "vmrk" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  size                = var.virtual_network_size     
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    var.network_interface_ids
  ]

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}