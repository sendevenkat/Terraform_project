// variable "resource_group_location" {
//   default     = "eastus"
//   description = "Location of the resource group"
// }
variable "azurerm_service_plan" {   
  default     = "service_plan"
  description = "Name azurerm_service_plan"
}

variable "azurerm_app_service" {   
  default     = "webapp50060"
  description = "Name azurerm_app_service"
}