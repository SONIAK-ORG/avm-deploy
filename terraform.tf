terraform {
  required_version = "~> 1.8"
  required_providers {
    alz = {
      source  = "azure/alz"
      version = "~> 0.16"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 2.0, >= 2.0.1"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

# Include the additional policies and override archetypes
provider "alz" {
  library_fetch_dependencies = true
  library_overwrite_enabled = true
  library_references = [
    {
      path = "platform/alz"
      ref  = "2024.10.1"
    },
    {
      custom_url = "${path.root}/lib"
    }
  ]

  tenant_id   = var.tenant_id
}

provider "azapi" {
  use_msi       = true
  msi_client_id = "6688bcff-1f80-472a-96db-d7f0cae4e0c0" # Object ID or Client ID of the Managed Identity
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
