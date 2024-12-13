module "landing_zones" {
  source  = "../../modules/Lz-Vending"

  for_each = var.landing_zones

  location                  = each.value.location
  subscription_display_name = each.value.subscription_display_name
  #subscription_billing_scope = each.value.subscription_billing_scope
  #subscription_alias_enabled = each.value.subscription_alias_enabled
  subscription_display_name =  each.value.subscription_display_name
  subscription_id =            each.value.subscription_id

  # Pass virtual networks for each landing zone
  virtual_networks = each.value.virtual_networks
}

