# VirtualWAN module
module "avm-ptn-virtualwan" {
  source = "Azure/avm-ptn-virtualwan/azurerm"
  version = "0.5.3"  
  location              = var.location
  resource_group_name   = var.resource_group_name
  create_resource_group = true
  virtual_wan_name      = var.virtual_wan_name
  allow_branch_to_branch_traffic = var.allow_branch_to_branch_traffic
  enable_telemetry = false
  hubs = var.hubs
  # Add other required variables for VirtualWAN module
}
