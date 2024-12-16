variable "subscription_id" {
  type = string
  default = ""

}

variable "tenant_id" {
    type = string
    default = ""  

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