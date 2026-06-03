
variable "location" {
  type        = string
  description = "Name of the location"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the location"
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
