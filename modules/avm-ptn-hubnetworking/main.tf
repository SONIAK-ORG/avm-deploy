# HubNetworking module
module "avm-ptn-hubnetworking" {
  source = "Azure/terraform-azurerm-avm-ptn-hubnetworking/azurerm"
  version = "0.4.0"  
  location              = var.location
  resource_group_name   = var.resource_group_name
  hub_name              = var.hub_name
  # Add other required variables for HubNetworking module
}

