resource "azurerm_resource_group" "workflow_test" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Project      = "bpc-workflow-test"
    Environment  = "workflow-test"
    ManagedBy    = "terraform"
    CostCenter   = var.cost_center
    Owner        = var.owner
    Compliance   = var.compliance
    Repository   = var.repository_url
  }
}
