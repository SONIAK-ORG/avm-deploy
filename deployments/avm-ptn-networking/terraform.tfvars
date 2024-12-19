# terraform.tfvars

# Enable Virtual WAN deployment
enable_virtualwan = true


suffix = "network"

# Enable Hub Networking deployment
enable_hubnetworking = false

# Azure region where resources will be deployed
location = "uksouth"

# The name of the resource group to deploy resources into
resource_group_name = "LZ-Hub"

# The name of the Virtual WAN
virtual_wan_name = "Wvan-hub"

# The name of the Hub
hub_name = "alz-hub"

# Subscription ID for connectivity
subscription_id_connectivity = "d542cb6b-9712-4344-b018-b785d8544d2a"




virtual_hubs = {
  primary-hub = {
    name                 = "primary-hub"
    location             = "East US"
    address_prefix       = "10.0.0.0/24"
    sku                  = "Standard"
    routing_preference   = "Microsoft Network"
  }

  secondary-hub = {
    name                 = "secondary-hub"
    location             = "West US"
    address_prefix       = "10.1.0.0/24"
    sku                  = "Standard"
    routing_preference   = "Microsoft Network"
  }
}


firewalls = {
  primary-firewall = {
    virtual_hub_key      = "primary-hub"
    sku_name             = "AZFW_Hub"
    sku_tier             = "Standard"
    name                 = "Primary-firewall"
    threat_intel_mode    = "Alert"
    vhub_public_ip_count = "2"
    tags = {
      environment = "production"
      owner       = "network-team"
    }
    default_ip_configuration = {
      name = "primary-ip-config"
      public_ip_config = {
        name       = ["primary-firewall-public-ip"]
        ip_version = "IPv4"
        sku_tier   = "Regional"
      }
    }
  }

  secondary-firewall = {
    virtual_hub_key      = "secondary-hub"
    sku_name             = "AZFW_Hub"
    sku_tier             = "Standard"
    name                 = "Secondary-firewall"
    threat_intel_mode    = "Deny"
    vhub_public_ip_count = "1"
    tags = {
      environment = "development"
      owner       = "network-team"
    }
    default_ip_configuration = {
      name = "secondary-ip-config"
      public_ip_config = {
        name       = ["secondary-firewall-public-ip"]
        ip_version = "IPv4"
        sku_tier   = "Regional"
      }
    }
  }
}




# vpn_gateways = {
#  "primary-gateway" = {
#    name            = "primary-vpn-gateway"
#    virtual_hub_key = "primary-hub"
#  }
# }





# Configuration for hub virtual networks


hub_virtual_networks = {
  hub = {
    name                = "hub-prod"
    address_space       = ["10.0.0.0/16"]
    location            = "uksouth"
    resource_group_name = "ALZ-Hub"
    resource_group_creation_enabled = true
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
