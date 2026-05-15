# terraform {
#   backend "azurerm" {
#     resource_group_name = "Rg-terraform"
#     storage_account_name = "__bkstorage__"
#      container_name       = "container123"
#      key                  = "dev.terraform.tfstate"
#     access_key           = "__storagekey__"
#   }
# }