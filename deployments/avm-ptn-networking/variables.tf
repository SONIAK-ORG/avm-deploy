variable "enable_virtualwan" {
  description = "Enable Hub Networking deployment"
  type        = bool
  default     = false
}


# VirtualWAN specific variables
variable "virtualwan_name" {
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

variable "resource_group" {
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
