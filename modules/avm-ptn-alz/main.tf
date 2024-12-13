# This allows us to get the tenant id
data "azapi_client_config" "current" {}



# module "alz_architecture" {
#   source             = "Azure/avm-ptn-alz/azurerm"
#   version            = "0.10.0"
#   architecture_name  = var.architecture_name
#   parent_resource_id = var.parent_resource_id
#   location           = var.location

#    delays = {
#      after_management_group = {
#        create  = "60s"
#        destroy = "0s"
#      }

#     after_policy_definitions = {
#         create  = "30s"
#         destroy = "0s"
#       }
#       after_policy_set_definitions = {
#         create  = "30s"
#         destroy = "0s"
#       }

#    }

#   # Retries Configuration
#   retries = {
#     management_groups = {
#       error_message_regex = [
#         "AuthorizationFailed",
#         "ManagementGroupNotFound",    # Handle eventual consistency issues with management groups
#         "ResourceNotFound"     # Retry if the resource isn't immediately available
#       ]
#       interval_seconds     = 10    # Retry every 10 seconds
#       max_interval_seconds = 60    # Max retry interval of 1 minute
#       multiplier           = 2     # Exponential backoff multiplier
#       randomization_factor = 0.5   # Add randomness to retry intervals
#     }
#   }
#   subscription_placement = var.subscription_placement

# }





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

  subscription_placement = var.subscription_placement

  # Policy Assignments to Modify
  policy_assignments_to_modify = {
       custom-root = {
         policy_assignments = {
           deploy-diag-logscat = {
             enforcement_mode = "Disabled" # Disable enforcement for resource logging policy
           }
         }
       }
    custom-root = {
      policy_assignments = {
        deploy-azactivity-log = {
          enforcement_mode = "Disabled" # Disable enforcement for activity logs policy
        }
      }
    }
    custom-root = {
      policy_assignments = {
        enable-ddos-vnet = {
          enforcement_mode = "Disabled" # Disable enforcement for DDoS protection policy
          }
        }
      }
    }
  }
}

