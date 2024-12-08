resource "azurerm_resource_group" "rg" {
  count    = var.deploy_resource_group ? 1 : 0
  name     = "${var.environment}-${var.resource_group_name}"
  location = var.location
  tags = {
    environment = var.environment,
  }
}