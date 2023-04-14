resource "azurerm_network_interface" "network_interfaces" {
  count               = length(var.vm_names)
  name                = "nic-${var.vm_names[count.index]}"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "virtual_machines" {
  count               = length(var.vm_names)
  name                = var.vm_names[count.index]
  location            = var.location
  resource_group_name = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.network_interfaces[count.index].id]
  vm_size = var.vm_size

  storage_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version = "latest"
  }

  storage_os_disk {
    name              = "osdisk-${var.vm_names[count.index]}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = var.vm_names[count.index]
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}