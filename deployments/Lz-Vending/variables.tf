variable "landing_zones" {
  description = "Map of landing zones with their configurations"
  type = map(object({
    location                  = string
    subscription_display_name = string
    subscription_id           = string
    virtual_networks          = map(object({
      name                 = string
      address_space        = list(string)
      location             = string
      mesh_peering_enabled = bool
    }))
  }))
}
