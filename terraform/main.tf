resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${var.project}-${var.environment}-rg"
}

resource "azurerm_service_plan" "win_asp" {
  name                = "${var.project}-${var.environment}-win-asp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_name            = "F1"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "win_webapp" {
  name                = "${var.project}-${var.environment}-win-webapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.win_asp.location
  service_plan_id     = azurerm_service_plan.win_asp.id

  site_config {}
}
