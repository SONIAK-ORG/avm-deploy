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

variable "architecture_name" {
  type = string
  default = "custom"
}

variable "parent_resource_id" {
  type = string
  default = ""
}

variable "subscription_placement" {
  description = "A map of subscriptions to place into management groups"
  type = map(object({
    subscription_id       = string
    management_group_name = string
  }))
}


variable "tenant_id" {
  type        = string
  description = "Subscription ID to use for \"connectivity\" resources."
  default = "09583a4a-6ecd-403d-a1de-7847ab22da08"
}