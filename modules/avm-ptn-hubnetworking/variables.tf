variable "hub_virtual_networks" {
  description = "Configuration for hub virtual networks."
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    firewall = object({
      sku_name              = string
      sku_tier              = string
      subnet_address_prefix = string
    })
    subnets = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}


variable "resource_group_name" {
  description = "The name of the resource group to deploy resources into"
  type        = string
  default     = "my-default-resource-group"
}
