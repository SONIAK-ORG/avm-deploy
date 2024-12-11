# VirtualWAN module
module "virtualwan" {
  count  = var.enable_virtualwan ? 1 : 0
  source = "Azure/terraform-azurerm-avm-ptn-virtualwan"
  
  location              = var.location
  resource_group_name   = var.resource_group_name
  virtualwan_name       = var.virtualwan_name
  # Add other required variables for VirtualWAN module
}

# HubNetworking module
module "hubnetworking" {
#   count  = var.enable_hubnetworking ? 1 : 0
  source = "Azure/terraform-azurerm-avm-ptn-hubnetworking"
  
  location              = var.location
  resource_group_name   = var.resource_group_name
  hub_name              = var.hub_name
  # Add other required variables for HubNetworking module
}
