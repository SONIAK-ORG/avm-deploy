data "azapi_client_config" "current" {}

module "management_resources" {
  source  = "Azure/avm-ptn-alz-management/azurerm"
  version = "~> 0.4.0"

  automation_account_name      = var.automation_account_name
  location                     = var.location
  log_analytics_workspace_name = var.log_analytics_workspace_name
  resource_group_name          = var.resource_group_name 

  enable_telemetry             = false
}