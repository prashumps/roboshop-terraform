variable "ip_configuration_subnet_id" {
  default = "/subscriptions/fce3d656-0949-412a-9e49-d5c96a4783c9/resourceGroups/project-setup/providers/Microsoft.Network/virtualNetworks/project-setup-network/subnets/default"
}

variable "storage_image_reference_id" {
  default = "/subscriptions/fce3d656-0949-412a-9e49-d5c96a4783c9/resourceGroups/project-setup/providers/Microsoft.Compute/images/local-devops-practice"
}

variable "zone_name" {
  default = "prashumps.online"
}

variable "location" {
  default = "UK West"
}

variable "rg_name" {
  default = "project-setup"
}