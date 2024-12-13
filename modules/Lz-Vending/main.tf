
module "landing_zones" {
  source  = "Azure/lz-vending/azurerm"
  version = "4.1.5"

  for_each = var.landing_zones

  subscription_id = each.value.subscription_id
  owner           = each.value.owner
  environment     = each.value.environment
  location        = each.value.location

  # Add other required inputs as needed
}
