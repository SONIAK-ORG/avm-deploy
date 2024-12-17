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

 variable "enable_hubnetworking" {
   description = "Enable Hub Networking deployment"
   type        = bool
   default     = false
 }

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
  default = "832b0908-3585-4294-a01c-7763fc195006"
}

variable "hub_virtual_networks" {
  description = "Configuration for hub virtual networks."
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
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




variable "allow_branch_to_branch_traffic" {
  description = "Switch to flip VWAN branch to branch traffic"
  type        = bool
}


variable "suffix" {
  description = "A suffix to append to resource names for uniqueness"
  type        = string
  default     = "prod"  # You can set a default value or leave it without one
}







variable "virtual_hubs" {
  description = "Map of hubs to configure Azure Virtual WAN hubs in multiple regions."
  type = map(object({
    name               = string
    location           = string
    address_prefix     = string
    sku                = string
    routing_preference = string
    firewall = optional(object({
      virtual_hub_key      = string
      sku_name             = string
      sku_tier             = string
      threat_intel_mode    = optional(string)
      vhub_public_ip_count = optional(string)
      tags                 = optional(map(string))
      default_ip_configuration = optional(object({
        name = optional(string)
        public_ip_config = optional(object({
          name       = optional(list(string))
          ip_version = optional(string)
          sku_tier   = optional(string)
        }))
      }))
    }))
  }))
}



