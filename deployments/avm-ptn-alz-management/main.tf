data "azapi_client_config" "current" {}

module "avm_ptn_alz_management" {
  source  = "../../modules/avm-ptn-alz-management"
  automation_account_name      = var.automation_account_name
  location                     = var.location
  log_analytics_workspace_name = var.log_analytics_workspace_name
  resource_group_name          = var.resource_group_name
  providers = {
    azapi = azapi
  }

}
