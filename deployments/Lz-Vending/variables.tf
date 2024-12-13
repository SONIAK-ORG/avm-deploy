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
      resource_group_name  = string
      mesh_peering_enabled = bool
    }))
  }))
}



variable "tenant_id" {
  type        = string
  default = "09583a4a-6ecd-403d-a1de-7847ab22da08"
}
