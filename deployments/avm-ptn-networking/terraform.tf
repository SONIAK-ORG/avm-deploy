terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.74"
    }
  }

}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id_connectivity
  tenant_id       = var.tenant_id
  client_id       = "09583a4a-6ecd-403d-a1de-7847ab22da08"
  use_oidc = true

}

