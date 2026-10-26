terraform {
  backend "azurerm" {
    resource_group_name  = "rg-bpc-landing-zone-cicd-wus3"
    storage_account_name = "stbpctfstatetest"
    container_name       = "tfstate-workflow-test"
    key                  = "workflow-test-prod.tfstate"
    use_azuread_auth     = true
  }
}
