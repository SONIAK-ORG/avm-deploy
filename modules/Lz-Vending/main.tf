module "lz_vending" {
  source  = "Azure/lz-vending/azurerm"
  version = "4.1.5"

  for_each                 = var.landing_zones
  location                 = each.value.location
  subscription_display_name = each.value.subscription_display_name
  subscription_id          = each.value.subscription_id
  virtual_networks         = each.value.virtual_networks

  disable_telemetry = false
  virtual_network_enabled = true
  network_watcher_resource_group_enabled = true
}

