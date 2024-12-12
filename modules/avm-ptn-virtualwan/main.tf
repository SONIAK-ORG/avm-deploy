# VirtualWAN module
module "avm-ptn-virtualwan" {
  source = "Azure/avm-ptn-virtualwan/azurerm"
  version = "0.5.3"  
  location              = var.location
  resource_group_name   = var.resource_group_name
  virtual_wan_name      = var.virtual_wan_name
  allow_branch_to_branch_traffic = var.allow_branch_to_branch_traffic
  # Add other required variables for VirtualWAN module
}
