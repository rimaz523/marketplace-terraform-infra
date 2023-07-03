module "app_key_vault_rbac" {
  source   = "./modules/management/role_assignment"
  for_each = var.app_key_vault_rbac

  scope_id                         = module.key_vault["app"].id
  principal_id                     = each.value.principal_id
  roles                            = each.value.roles
  skip_service_principal_aad_check = each.value.skip_service_principal_aad_check

  depends_on = [
    module.key_vault["app"].id
  ]
}
