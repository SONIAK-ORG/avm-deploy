#data "azapi_client_config" "current" {}

module "avm_ptn_alz" {
  source  = "../../modules/avm-ptn-alz"  # Adjusted for local folder structure

  architecture_name  = var.rchitecture_name 
  parent_resource_id = "/providers/Microsoft.Management/managementGroups/832b0908-3585-4294-a01c-7763fc195006"     #data.azapi_client_config.current.tenant_id
  location           = var.location 

  providers = {
    azapi = azure.azapi
  }

  # Add other required module-specific variables as needed
}

