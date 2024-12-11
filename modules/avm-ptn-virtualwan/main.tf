# VirtualWAN module
module "virtualwan" {
  source = "Azure/terraform-azurerm-avm-ptn-virtualwan"
  
  location              = var.location
  resource_group_name   = var.resource_group_name
  virtualwan_name       = var.virtualwan_name
  # Add other required variables for VirtualWAN module
}