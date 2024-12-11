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
  use_oidc = true
  client_id = "09583a4a-6ecd-403d-a1de-7847ab22da08"
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
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id = "09583a4a-6ecd-403d-a1de-7847ab22da08"
  use_oidc = true
}
