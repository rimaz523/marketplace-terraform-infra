resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${var.project}-${var.environment}-rg"
}

resource "azurerm_service_plan" "asp" {
  name                = "${var.project}-${var.environment}-asp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_name            = var.app_service_sku
  os_type             = var.app_service_os
}

resource "azurerm_linux_web_app" "dotnet_webapp" {
  name                = "${var.project}-${var.environment}-dotnet-webapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.asp.location
  service_plan_id     = azurerm_service_plan.asp.id
  https_only          = true

  site_config {
    always_on = true
  }
}

resource "azurerm_linux_web_app" "react_webapp" {
  name                = "${var.project}-${var.environment}-react-webapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.asp.location
  service_plan_id     = azurerm_service_plan.asp.id
  https_only          = true

  site_config {
    always_on = true
  }
}

resource "azurerm_linux_web_app" "vue_webapp" {
  name                = "${var.project}-${var.environment}-vue-webapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.asp.location
  service_plan_id     = azurerm_service_plan.asp.id
  https_only          = true

  site_config {
    always_on = true
  }
}
