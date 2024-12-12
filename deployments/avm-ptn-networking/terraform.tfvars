# Enable Hub Networking deployment
enable_virtualwan = false

# Enable Hub Networking deployment
# enable_hubnetworking = true

# Azure region where resources will be deployed


# The name of the resource group to deploy resources into



virtualwan_name  = "Wvan-hub"


hub_name  = "alz-hub"


resource_group_name = "LZ-Hub"

subscription_id_connectivity = "6ab5ad42-6a7d-4f21-a926-9ce61b67df96"

   hub_virtual_networks= {
     name                            = "hub-prod"
     address_space                   = ["10.0.0.0/16"]
     location                        = var.location
     resource_group_name             = azurerm_resource_group.rg.name
     resource_group_creation_enabled = false
     firewall = {
       sku_name              = "AZFW_VNet"
       sku_tier              = "Standard"
       subnet_address_prefix = "10.0.1.0/24"
     }
     subnets = {
       server-subnet = {
         name             = "server-subnet"
         address_prefixes = ["10.0.101.0/24"]
       }
     }
   }
 }
