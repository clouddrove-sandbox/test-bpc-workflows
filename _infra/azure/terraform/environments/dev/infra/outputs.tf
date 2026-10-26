output "resource_group_name" {
  description = "Name of the test resource group."
  value       = azurerm_resource_group.workflow_test.name
}

output "resource_group_id" {
  description = "Azure resource ID of the test resource group."
  value       = azurerm_resource_group.workflow_test.id
}
