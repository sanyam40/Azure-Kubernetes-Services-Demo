resource "azurerm_container_registry" "acr" {
  count               = var.deploy_resource_group ? 1 : 0
  name                = "${var.environment}${var.acr_name}"
  resource_group_name = azurerm_resource_group.rg[count.index].name
  location            = azurerm_resource_group.rg[count.index].location
  sku                 = var.acr_sku
  admin_enabled       = true
  tags = {
    environment = var.environment,
  }
}