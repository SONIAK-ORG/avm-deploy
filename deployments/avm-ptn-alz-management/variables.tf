variable "subscription_id" {
  type = string
  default = "6ab5ad42-6a7d-4f21-a926-9ce61b67df96"

}

variable "tenant_id" {
    type = string
    default = "832b0908-3585-4294-a01c-7763fc195006"  

}

variable "location" {
  type = string
  default = "uksouth"
}
variable "parent_resource_id" {
  type = string
  default = ""
}

variable "automation_account_name" {
  default = "canary-alz-vnext"
  type = string 
}

variable "resource_group_name" {
  type = string
  default = "alz-vnext"
}
variable "log_analytics_workspace_name" {
  type = string
  default = "law-alz-vnext"
}