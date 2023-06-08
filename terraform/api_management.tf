module "apim" {
  source   = "./modules/integration/api_management"
  for_each = var.apims

  name                = each.key
  resource_group_name = module.resource_group["app"].name
  location            = module.resource_group["app"].location
  environment         = var.environment
  project             = var.project
  sku                 = each.value.sku
  company_name        = each.value.company
  company_email       = each.value.email

  depends_on = [
    module.resource_group["app"].id
  ]
}
