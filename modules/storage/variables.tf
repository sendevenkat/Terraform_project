variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region for the resource group"
}

variable "environment" {
  type        = string
  description = "Environment name dev"
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
