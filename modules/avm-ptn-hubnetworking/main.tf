# HubNetworking module
module "hubnetworking" {
  source = "Azure/terraform-azurerm-avm-ptn-hubnetworking"

  
  location              = var.location
  resource_group_name   = var.resource_group_name
  hub_name              = var.hub_name
  # Add other required variables for HubNetworking module
}

