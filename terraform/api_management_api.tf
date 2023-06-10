module "api_management_api" {
  source   = "./modules/integration/api_management_api"
  for_each = var.apis

  name                       = each.key
  resource_group_name        = module.resource_group["common"].name
  project                    = var.project
  environment                = var.environment
  api_management_name        = module.api_management["backend"].name
  api_revision               = each.value.api_revision
  path                       = each.value.path
  service_url                = each.value.service_url
  swagger_json_relative_path = each.value.swagger_json_relative_path
  swagger_format             = each.value.swagger_format

  depends_on = [
    module.resource_group["common"].id,
    module.api_management["backend"].id
  ]
}
