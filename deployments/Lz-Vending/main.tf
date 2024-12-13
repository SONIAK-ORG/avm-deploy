module "landing_zones" {
  source  = "../../modules/Lz-Vending"

   landing_zones    = var.landing_zones
#  for_each                 = var.landing_zones
#  location                 = each.value.location
#  subscription_display_name = each.value.subscription_display_name
#  subscription_id          = each.value.subscription_id
#  virtual_networks         = each.value.virtual_networks
}

