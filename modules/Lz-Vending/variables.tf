variable "landing_zones" {
  description = "Map of landing zones with their configurations"
  type = map(object({
    location                  = string
    subscription_display_name = string
    subscription_id           = string
#    virtual_network_enabled   = bool
#    network_watcher_resource_group_enabled = bool
    virtual_networks          = map(object({
      name                 = string
      address_space        = list(string)
      location             = string
      resource_group_name  = string
      vwan_connection_enabled  = bool
      vwan_hub_resource_id = string
    }))
  }))
}
