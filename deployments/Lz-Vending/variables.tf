variable "landing_zones" {
  description = "Map of landing zones with their configurations"
  type = map(object({
    location                  = string
    subscription_display_name = string
    subscription_id           = string
    virtual_network_enabled   = bool
    network_watcher_resource_group_enabled = bool
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
  default = "832b0908-3585-4294-a01c-7763fc195006"
}


variable "subscription_id" {
  type = string
  default = "6ab5ad42-6a7d-4f21-a926-9ce61b67df96"

}
