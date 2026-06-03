module "resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  
}

module "storage" {
  source    = "../../modules/storage"
  environment = var.environment
  storage_account_name = var.storage_account_name
  replication_type     = var.replication_type
  location             = var.location
  resource_group_name  = var.resource_group_name
  account_tier         = var.account_tier    
}

module "network" {
  source = "../../modules/network"
  resource_group_name = var.resource_group_name
  vnet_name = var.vnet_name
  location = var.location
  subnets = var.subnets
  address_space = var.address_space
}
