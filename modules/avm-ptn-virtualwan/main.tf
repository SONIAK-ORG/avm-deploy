# VirtualWAN module
module "virtualwan" {
  source = "Azure/terraform-azurerm-avm-ptn-virtualwan/azurerm" 
  version = "0.5.3"  
  location              = var.location
  resource_group_name   = var.resource_group_name
  virtualwan_name       = var.virtualwan_name
  # Add other required variables for VirtualWAN module
}
