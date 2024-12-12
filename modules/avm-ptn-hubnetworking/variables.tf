variable "enable_virtualwan" {
  description = "Enable Virtual WAN deployment"
  type        = bool
  default     = false
}

variable "enable_hubnetworking" {
  description = "Enable Hub Networking deployment"
  type        = bool
  default     = false
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

# VirtualWAN specific variables
variable "virtualwan_name" {
  description = "Name of the Virtual WAN"
  type        = string
}

# HubNetworking specific variables
variable "hub_name" {
  description = "Name of the Hub Networking Virtual Hub"
  type        = string
}

variable "subscription_id_connectivity" {
  type        = string
  description = "Subscription ID to use for \"connectivity\" resources."
}
