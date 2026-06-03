data "azurerm_resource_group" "Rg-dev" {
  name = "Rg-terraform"
  
}

resource "azurerm_storage_account" "dev-storage" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.Rg-dev
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = {
    environment = "dev"
  }
}