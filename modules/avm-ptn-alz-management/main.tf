data "azapi_client_config" "current" {}

module "management_resources" {
  source  = "Azure/avm-ptn-alz-management/azurerm"
  version = "~> 0.4.0"

  automation_account_name      = try(local.management.automation_account_name, "")
  location                     = try(local.management.location, "")
  log_analytics_workspace_name = try(local.management.log_analytics_workspace_name, "")
  resource_group_name          = try(local.management.resource_group_name, "")
  enable_telemetry             = false

#   providers = {
#     azurerm = azurerm.management
#   }
}