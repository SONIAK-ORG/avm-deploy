terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "terrastatekainos"
    container_name       = "tfstate"
    key                  = "avm-ptn-networking/terraform.tfstate"
    use_oidc             = true  
  }
}