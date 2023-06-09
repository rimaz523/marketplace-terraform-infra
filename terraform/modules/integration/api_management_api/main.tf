# azurerm_api_management_api
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/api_management_api

resource "azurerm_api_management_api" "api" {
  name                = lower("${var.project}-${var.name}-${var.environment}-api")
  resource_group_name = var.resource_group_name
  api_management_name = var.api_management_name
  revision            = var.api_revision
  # version             = var.api_version
  # version_set_id      = "1"
  display_name = "${var.project} ${var.name} API"
  path         = var.path
  protocols    = ["https"]

  import {
    content_format = var.swagger_format
    content_value  = "${var.service_url}${var.swagger_json_relative_path}"
  }
}
