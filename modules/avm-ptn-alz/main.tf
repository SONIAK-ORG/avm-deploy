# This allows us to get the tenant id
data "azapi_client_config" "current" {}

// module "alz_architecture" {
//   source             = "Azure/avm-ptn-alz/azurerm"
//   version            = "0.10.0"
//   architecture_name  = var.architecture_name
//   parent_resource_id = data.azapi_client_config.current.tenant_id
//   location           = var.location

//   # delays = {
//   #   after_management_group = {
//   #     create  = "60s"
//   #     destroy = "0s"
//   #   }
//   #   after_policy_definitions = {
//   #     create  = "30s"
//   #     destroy = "0s"
//   #   }
//   #   after_policy_set_definitions = {
//   #     create  = "30s"
//   #     destroy = "0s"
//   #   }
//   # }

//   # retries = {
//   #   management_groups = {
//   #     error_message_regex = [
//   #       "AuthorizationFailed","ResourceNotFound" # Avoids an eventual consistency issue where a recently created management group is not yet available for a GET operation.
//   #     ]
//   #     interval_seconds     = 5
//   #     max_interval_seconds = 30
//   #     multiplier           = 2
//   #     randomization_factor = 0.5
//   #   }
//   #   role_definitions = {
//   #     error_message_regex  = null
//   #     interval_seconds     = null
//   #     max_interval_seconds = null
//   #     multiplier           = null
//   #     randomization_factor = null
//   #   }
//   #   policy_definitions = {
//   #     error_message_regex  = null
//   #     interval_seconds     = null
//   #     max_interval_seconds = null
//   #     multiplier           = null
//   #     randomization_factor = null
//   #   }
//   #   policy_set_definitions = {
//   #     error_message_regex  = null
//   #     interval_seconds     = null
//   #     max_interval_seconds = null
//   #     multiplier           = null
//   #     randomization_factor = null
//   #   }
//   #   policy_assignments = {
//   #     error_message_regex = [
//   #       "The policy definition specified in policy assignment '.+' is out of scope" # If assignment is created soon after a policy definition has been created then the assignment will fail with this error.
//   #     ]
//   #     interval_seconds     = 5
//   #     max_interval_seconds = 30
//   #     multiplier           = null
//   #     randomization_factor = null
//   #   }
//   #   policy_role_assignments = {
//   #     error_message_regex = [
//   #       "ResourceNotFound", # If the resource has just been created, retry until it is available.
//   #     ]
//   #     interval_seconds     = null
//   #     max_interval_seconds = null
//   #     multiplier           = null
//   #     randomization_factor = null
//   #   }
//   #   hierarchy_settings = {
//   #     error_message_regex  = null
//   #     interval_seconds     = null
//   #     max_interval_seconds = null
//   #     multiplier           = null
//   #     randomization_factor = null
//   #   }
//   #   subscription_placement = {
//   #     error_message_regex  = null
//   #     interval_seconds     = null
//   #     max_interval_seconds = null
//   #     multiplier           = null
//   #     randomization_factor = null
//   #   }
//   # }


//   #   management_group_hierarchy_settings = {
//   #   default_management_group_name            = "/providers/Microsoft.Management/managementGroups/832b0908-3585-4294-a01c-7763fc195006"
//   #   require_authorization_for_group_creation = false
//   #   update_existing                          = false
//   # }
// }





module "alz_architecture" {
  source             = "Azure/avm-ptn-alz/azurerm"
  version            = "0.10.0"
  architecture_name  = var.architecture_name
  parent_resource_id = var.parent_resource_id
  location           = var.location

   delays = {
     after_management_group = {
       create  = "60s"
       destroy = "0s"
     }

    after_policy_definitions = {
        create  = "30s"
        destroy = "0s"
      }
      after_policy_set_definitions = {
        create  = "30s"
        destroy = "0s"
      }

   }

  # Retries Configuration
  retries = {
    management_groups = {
      error_message_regex = [
        "AuthorizationFailed",
        "ManagementGroupNotFound",    # Handle eventual consistency issues with management groups
        "ResourceNotFound"     # Retry if the resource isn't immediately available
      ]
      interval_seconds     = 10    # Retry every 10 seconds
      max_interval_seconds = 60    # Max retry interval of 1 minute
      multiplier           = 2     # Exponential backoff multiplier
      randomization_factor = 0.5   # Add randomness to retry intervals
    }
  }
  subscription_placement = var.subscription_placement

}

