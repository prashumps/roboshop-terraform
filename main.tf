module "frontend" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "frontend"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "mongodb" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "mongodb"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "mysql" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "mysql"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "rabbitmq" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "rabbitmq"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "redis" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "redis"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "catalogue" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "catalogue"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "cart" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "cart"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "user" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "user"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "shipping" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "shipping"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

module "payment" {
  source                        = "./component"
  ip_configuration_subnet_id    = var.ip_configuration_subnet_id
  location                      = var.location
  name                          = "payment"
  rg_name                       = var.rg_name
  storage_image_reference_id    = var.storage_image_reference_id
  zone_name                     = var.zone_name
}

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
