data "azapi_client_config" "current" {}

module "avm_ptn_alz" {
  source  = "../../modules/avm-ptn-alz"  # Adjusted for local folder structure

  architecture_name  = "custom"
  parent_resource_id = data.azapi_client_config.current.tenant_id
  location           = "uksouth"

  providers = {
    azapi = azure.azapi
  }

  # Add other required module-specific variables as needed
}

