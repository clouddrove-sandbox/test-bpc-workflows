provider "azurerm" {
  features {}

  tenant_id       = var.tenant_id
  subscription_id = coalesce(var.subscription_id, var.connectivity_subscription_id)
}
