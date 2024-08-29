resource "azurerm_logic_app_workflow" "logicapp" {
  name                = "my-logic-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}