provider "azurerm" {
  # resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = "fce3d656-0949-412a-9e49-d5c96a4783c9"
}

# variable "prefix" {
#   default = "tfvmex"
# }
#
# resource "azurerm_resource_group" "example" {
#   name     = "${var.prefix}-resources"
#   location = "West Europe"
# }

# resource "azurerm_virtual_network" "main" {
#   name                = "${var.prefix}-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }
#
# resource "azurerm_subnet" "internal" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.main.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

resource "azurerm_network_interface" "frontend" {
  name                = "frontend"
  location            = "UK West"
  resource_group_name = "project-setup"

  ip_configuration {
    name                          = "frontend"
    subnet_id                     = "/subscriptions/fce3d656-0949-412a-9e49-d5c96a4783c9/resourceGroups/project-setup/providers/Microsoft.Network/virtualNetworks/project-setup-network/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.frontend.id
  }
}

resource "azurerm_public_ip" "frontend" {
  name                = "frontend"
  resource_group_name = "project-setup"
  location            = "UK West"
  allocation_method   = "Static"
}

resource "azurerm_virtual_machine" "frontend" {
  name                  = "frontend"
  location              = "UK West"
  resource_group_name   = "project-setup"
  network_interface_ids = [azurerm_network_interface.frontend.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
    id = "/subscriptions/fce3d656-0949-412a-9e49-d5c96a4783c9/resourceGroups/project-setup/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "frontend"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "frontend"
    admin_username = "azuser"
    admin_password = "Devops@123456"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_dns_a_record" "frontend" {
  name                = "frontend-dev"
  zone_name           = "prashumps.online"
  resource_group_name = "project-setup"
  ttl                 = 3
  records             = [azurerm_network_interface.frontend.private_ip_address]
}