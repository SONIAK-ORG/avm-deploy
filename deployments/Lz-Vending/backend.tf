terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "terrastatekainos"
    container_name       = "tfstate"
    key                  = "Lz-Vending/terraform.tfstate"
    use_oidc             = true  
  }
}