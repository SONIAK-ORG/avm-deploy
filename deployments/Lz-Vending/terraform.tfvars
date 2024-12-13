landing_zones = {
  landing_zone1 = {
    location                  = "East US"
    subscription_display_name = "Development Subscription"
    subscription_id           = "ac026fb9-0872-42a2-a90a-eb8769742ecf"  #"d7aee89f-fe29-4627-b0d0-95acbaf60201"
    virtual_network_enabled = true
    network_watcher_resource_group_enabled = true

    virtual_networks = {
      vnet1 = {
        name                 = "vnet1"
        address_space        = ["10.0.0.0/16"]
        location             = "uksouth"
        resource_group_name  = "rg-vnet1" # Add this attribute
        mesh_peering_enabled = false
      }
    }
  }

  landing_zone2 = {
    location                  = "West Europe"
    subscription_display_name = "Production Subscription"
    subscription_id           = "cf0f721d-6338-4687-aecd-3c2a66535c66"
    virtual_network_enabled = true
    network_watcher_resource_group_enabled = true

    virtual_networks = {
      vnet2 = {
        name                 = "vnet2"
        address_space        = ["10.1.0.0/16"]
        location             = "uksouth"
        resource_group_name  = "rg-vnet2" # Add this attribute
        mesh_peering_enabled = true
      }
    }
  }
}

