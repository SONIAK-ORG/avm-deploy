landing_zones = {
  landing_zone1 = {
    location                  = "East US"
    subscription_display_name = "Development Subscription"
    subscription_id           = "0fdf0dd6-c2a7-492b-9745-1435090a3ac9"
#   virtual_network_enabled = true
#   network_watcher_resource_group_enabled = true

    virtual_networks = {
      vnet1 = {
        name                 = "vnet1"
        address_space        = ["10.0.0.0/16"]
        location             = "uksouth"
        resource_group_name  = "rg-vnet1" # Add this attribute
        mesh_peering_enabled = true
        hub_network_resource_id = '''
      }
    }
  }



