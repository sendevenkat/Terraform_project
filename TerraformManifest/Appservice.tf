terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}


provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name = "Rg-terraform"
    storage_account_name = "__bkstorage__"
     container_name       = "container123"
     key                  = "dev.terraform.tfstate"
    access_key           = "__storagekey__"
  }
}

// resource "azurerm_resource_group" "Rg-appservice" {
//   name     = "Rg-appservice"
//   location = var.resource_group_location
// }

data "azurerm_resource_group" "Rg-appservice" {
  name = "Rg-terraform"
}

resource "azurerm_service_plan" "service_plan" {
  name                = var.azurerm_service_plan
  resource_group_name = data.azurerm_resource_group.Rg-appservice.name
  location            = data.azurerm_resource_group.Rg-appservice.location
  os_type             = "Windows"
  sku_name            = "B1"
}

resource "azurerm_windows_web_app" "appservice" {
  name                = var.azurerm_app_service
  resource_group_name = data.azurerm_resource_group.Rg-appservice.name
  location            = data.azurerm_resource_group.Rg-appservice.location
  service_plan_id = azurerm_service_plan.service_plan.id
  site_config  {}
  }