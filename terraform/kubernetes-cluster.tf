resource "azurerm_kubernetes_cluster" "aks" {
  count               = var.deploy_resource_group ? 1 : 0
  name                = var.cluster_name
  location            = azurerm_resource_group.rg[count.index].location
  resource_group_name = azurerm_resource_group.rg[count.index].name
  dns_prefix          = var.cluster_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = var.environment,
  }
}