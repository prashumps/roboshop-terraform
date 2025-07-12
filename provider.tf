provider "azurerm" {
  features {}
  subscription_id = "fce3d656-0949-412a-9e49-d5c96a4783c9"
}

terraform {
  backend "azurerm" {}
}

provider "vault" {
  address = "http://vault.prashumps.online:8200"
  token = var.token
}

provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}