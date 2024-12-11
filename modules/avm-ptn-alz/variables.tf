variable "subscription_id" {
  type    = string
  default = "6ab5ad42-6a7d-4f21-a926-9ce61b67df96"
}

variable "tenant_id" {
  type    = string
  default = "832b0908-3585-4294-a01c-7763fc195006"
}

variable "location" {
  type = string
  description = "Azure region where resources will be deployed"
}

variable "architecture_name" {
  type = string
  description = "Name of the architecture"
}

variable "parent_resource_id" {
  type        = string
  description = "ID of the parent resource (e.g., resource group or management group)"
}
