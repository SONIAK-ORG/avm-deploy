module "landing_zones" {
  source  = "../../modules/Lz-Vending"

   landing_zones = var.landing_zones
#  for_each                 = var.landing_zones
#  location                 = each.value.location
#  subscription_display_name = each.value.subscription_display_name
#  subscription_id          = each.value.subscription_id
#  virtual_networks         = each.value.virtual_networks
}


# Search for all resources with the 'deploy' tag
data "azurerm_resources" "deploy_tagged_resources" {
  tag = {
    "deploy" = "ready"
  }
}

# Add a new tag "name = raphael" to all resources returned by the data source
resource "azurerm_resource_tag" "add_raphael_tag" {
  for_each = toset(data.azurerm_resources.deploy_tagged_resources.resources[*].id)

  resource_id = each.key

  # Merge existing tags with the new tag
  tags = merge(
    data.azurerm_resources.deploy_tagged_resources.resources[each.key].tags,
    {
      "name" = "raphael"
    }
  )
}


