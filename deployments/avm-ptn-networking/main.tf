# VirtualWAN module
module "virtualwan" {
  count  = var.enable_virtualwan ? 1 : 0
  source = "../../modules/avm-ptn-virtualwan"
  
  location                    = var.location
  resource_group_name         = var.resource_group_name
  virtual_wan_name            = var.virtual_wan_name
  allow_branch_to_branch_traffic = var.allow_branch_to_branch_traffic
  # Add other required variables for VirtualWAN module

  virtual_hubs = var.virtual_hubs

  providers = {
    azurerm = azurerm
  }
}

# HubNetworking module
module "hubnetworking" {
  count  = var.enable_hubnetworking ? 1 : 0
  source = "../../modules/avm-ptn-hubnetworking"

  hub_virtual_networks = var.hub_virtual_networks

  providers = {
    azurerm = azurerm
  }
}




