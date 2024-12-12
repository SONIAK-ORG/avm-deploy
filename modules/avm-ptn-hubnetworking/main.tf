# HubNetworking module
module "avm-ptn-hubnetworking" {
  source = "Azure/avm-ptn-hubnetworking/azurerm"
  version = "0.4.0"  

  hub_virtual_networks = var.hub_virtual_networks

  # Add other required variables for HubNetworking module
}

