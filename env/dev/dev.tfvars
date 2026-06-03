
location             = "eastus2"
environment          = "dev"
resource_group_name  = "rg-dev"
storage_account_name = "prodstorageacct"
replication_type     = "GRS"
account_tier         = "standard"

vnet_name            = "dev-vnet"
address_space        = ["10.10.0.0/16"]
subnets = {
  subnet1 = { address_prefix = "10.10.1.0/24" }
  subnet2 = { address_prefix = "10.10.2.0/24" }
}

vm_size              = "Standard_D4s_v3"
vm_count             = 5
admin_username       = "prodadmin"
admin_password       = "ProdP@ssw0rd!"
