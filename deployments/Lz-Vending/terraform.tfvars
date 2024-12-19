landing_zones = {
  landing_zone1 = {
    location                  = "uksouth"
    subscription_display_name = "Development Subscription"
    subscription_id           = "0fdf0dd6-c2a7-492b-9745-1435090a3ac9"
    virtual_network_enabled = true
    # network_watcher_resource_group_enabled = true

    virtual_networks = {
      vnet1 = {
        name                    = "vnet1"
        address_space           = ["10.0.0.0/16"]
        location                = "uksouth"
        resource_group_name     = "rg-vnet1" # Add this attribute
        hub_peering_enabled =   = true
        hub_network_resource_id = "/subscriptions/d542cb6b-9712-4344-b018-b785d8544d2a/resourceGroups/LZ-Hub/providers/Microsoft.Network/virtualHubs/primary-hub"
      }
    }
  }
}


