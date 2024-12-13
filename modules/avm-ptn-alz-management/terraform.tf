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
