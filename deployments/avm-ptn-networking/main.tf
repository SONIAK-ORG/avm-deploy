resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = "rg-hub-${var.suffix}"
}


# VirtualWAN module
module "virtualwan" {
  count  = var.enable_virtualwan ? 1 : 0
  source = "../../modules/avm-ptn-virtualwan"  
  
  location              = var.location
  resource_group_name   = var.resource_group_name
  virtual_wan_name      = var.virtual_wan_name
  allow_branch_to_branch_traffic = var.allow_branch_to_branch_traffic
  # Add other required variables for VirtualWAN module

  providers = {
    azurerm = azurerm
  }
}

# HubNetworking module

module "hubnetworking" {
  count  = var.enable_hubnetworking ? 1 : 0
  source = "../../modules/avm-ptn-hubnetworking"

  # Inject the resource_group_name and enforce creation_enabled as true
  hub_virtual_networks = {
    for key, vnet in var.hub_virtual_networks :
    key => merge(vnet, {
      resource_group_name             = azurerm_resource_group.rg.name
      resource_group = true  # Always set to true
    })
  }

  # Add other required variables for HubNetworking module

  providers = {
    azurerm = azurerm
  }
}
