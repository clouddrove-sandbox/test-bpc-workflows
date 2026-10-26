variable "tenant_id" {
  type        = string
  description = "Azure tenant ID supplied by the workflow."
}

variable "connectivity_subscription_id" {
  type        = string
  description = "Landing-zone subscription ID supplied by the reusable workflow."
}

variable "subscription_id" {
  type        = string
  description = "Target subscription ID; omitted for the landing-zone root."
  default     = null
}

variable "cost_center" {
  type        = string
  description = "Cost center supplied by the reusable workflow."
}

variable "owner" {
  type        = string
  description = "Resource owner supplied by the reusable workflow."
}

variable "compliance" {
  type        = string
  description = "Compliance classification supplied by the reusable workflow."
}

variable "repository_url" {
  type        = string
  description = "Source repository supplied by the reusable workflow."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group created by this workflow test."
  default     = "rg-bpc-test-landing-zone-canadacentral"
}

variable "location" {
  type        = string
  description = "Azure region for the test resource group."
  default     = "Canada Central"
}
