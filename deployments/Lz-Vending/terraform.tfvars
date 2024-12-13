landing_zones = {
  landing_zone1 = {
    location                  = "East US"
    subscription_display_name = "Development Subscription"
    # subscription_billing_scope = "/providers/Microsoft.Billing/billingAccounts/xxxxxx"
    # subscription_alias_enabled = true
    subscription_id = "d7aee89f-fe29-4627-b0d0-95acbaf60201"
    virtual_networks = {
      vnet1 = {
        name                 = "vnet1"
        address_space        = ["10.0.0.0/16"]
        location             = "East US"
        # hub_peering_enabled  = true
        # hub_network_resource_id = "/subscriptions/<id>/resourceGroups/<rg>/providers/Microsoft.Network/virtualNetworks/<hub-vnet>"
        mesh_peering_enabled = false
      }
    }
  }

  landing_zone2 = {
    location                  = "West Europe"
    subscription_display_name = "Production Subscription"
    # subscription_billing_scope = "/providers/Microsoft.Billing/billingAccounts/yyyyyy"
    # subscription_alias_enabled = true
    subscription_id = "cf0f721d-6338-4687-aecd-3c2a66535c66"

    virtual_networks = {
      vnet2 = {
        name                 = "vnet2"
        address_space        = ["10.1.0.0/16"]
        location             = "West Europe"
        # hub_peering_enabled  = false
        # hub_network_resource_id = null
        mesh_peering_enabled = true
      }
    }
  }
}
