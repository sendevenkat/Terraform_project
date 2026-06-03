
variable "location" {
  type        = string
  description = "Azure region for resources"
}

variable "environment" {
  type        = string
  description = "Environment name dev"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "storage_account_name" {
  type        = string
  description = "storage name"
}

variable "replication_type" {
  type        = string
  description = "storage name"
}

variable "account_tier" {
  type        = string
  description = "storage name"
}

variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the VNet"
}

variable "subnets" {
  type = map(object({
    address_prefix = string
  }))
  description = "Subnets configuration"
}