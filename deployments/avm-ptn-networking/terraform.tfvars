# terraform.tfvars

# Enable Virtual WAN deployment
enable_virtualwan = false


suffix = "network"

# Enable Hub Networking deployment
enable_hubnetworking = true

# Azure region where resources will be deployed
location = "uksouth"

# The name of the resource group to deploy resources into
resource_group_name = "LZ-Hub"

# The name of the Virtual WAN
virtual_wan_name = "Wvan-hub"

# The name of the Hub
hub_name = "alz-hub"

# Subscription ID for connectivity
subscription_id_connectivity = "6ab5ad42-6a7d-4f21-a926-9ce61b67df96"

# Configuration for hub virtual networks


hub_virtual_networks = {
  hub = {
    name                = "hub-prod"
    address_space       = ["10.0.0.0/16"]
    location            = "uksouth"
    # resource_group_name is removed; it will be injected dynamically
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



allow_branch_to_branch_traffic = true

