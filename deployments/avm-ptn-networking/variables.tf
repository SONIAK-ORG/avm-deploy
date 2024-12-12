variable "enable_virtualwan" {
  description = "Enable Hub Networking deployment"
  type        = bool
  default     = false
}


# VirtualWAN specific variables
variable "virtual_wan_name" {
  description = "Name of the Virtual WAN"
  type        = string
}


variable "hub_name" {
  description = "Name of the Hub Networking Virtual Hub"
  type        = string
}

# variable "enable_hubnetworking" {
#   description = "Enable Hub Networking deployment"
#   type        = bool
#   default     = false
# }

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "The name of the resource group to deploy resources into"
  type        = string
  default     = "my-default-resource-group"
}

variable "subscription_id_connectivity" {
  type        = string
  description = "Subscription ID to use for \"connectivity\" resources."
}

variable "tenant_id" {
  type        = string
  description = "Subscription ID to use for \"connectivity\" resources."
  default = "09583a4a-6ecd-403d-a1de-7847ab22da08"
}

 variable "hub_virtual_networks" {
   description = "Configuration for hub virtual networks."
   type = map(object({
     name                            = string
     address_space                   = list(string)
     location                        = string
     resource_group_name             = string
     resource_group_creation_enabled = bool
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




variable "virtual_wan_name" {
  description = "Virtual WAN name"
  type        = string
}

variable "allow_branch_to_branch_traffic" {
  description = "Switch to flip VWAN branch to branch traffic"
  type        = bool
}
