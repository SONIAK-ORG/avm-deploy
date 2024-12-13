terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.74"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 1.7"
    }
  }
}



provider "azurerm" {
  features {
  }

  tenant_id  = var.tenant_id
  use_oidc = true
  client_id = "09583a4a-6ecd-403d-a1de-7847ab22da08"
  subscription_id = var.subscription_id
}


provider "azapi" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = "09583a4a-6ecd-403d-a1de-7847ab22da08" 
  use_oidc        = true
}


