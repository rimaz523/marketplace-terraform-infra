project     = "Marketplace"
environment = "dev"

resource_groups = {
  "app" = {
    location = "australiaeast"
  },
  "data" = {
    location = "australiaeast"
  },
  "common" = {
    location = "australiaeast"
  }
}

service_plans = {
  "asp" = {
    sku = "B1"
    os  = "Linux"
  }
}

ssl_certificates = {
  "marketagora-ssl" = {
    kv_name           = "marketplace-admin-kv"
    kv_resource_group = "marketplace-admin-rg"
    ssl_cert_name     = "marketagora-pfx-cert"
  }
}

apims = {
  "backend" = {
    company = "MarketAgora"
    email   = "rimazmohommed523@gmail.com"
    sku     = "Consumption_0"
  }
}

apis = {
  "Backend" = {
    api_revision               = "v1"
    path                       = "v1"
    swagger_json_relative_path = "/swagger/v1/swagger.json"
    swagger_format             = "openapi+json-link"
    service_url                = "https://marketplace-dev-dotnet-api.azurewebsites.net"
  }
}

key_vaults = {
  "app" = {
    tenant_id = "dd8e7948-f3de-4949-8fa8-cec81e0878d8"
    sku       = "standard"
  }
}

app_key_vault_rbac = {
  "app_kv_mkt_principal" = {
    "principal_id"                   = "52d46e72-ef8e-442a-b783-7d03b35dfe02"
    "roles"                          = ["Owner", "Key Vault Secrets Officer"]
    skip_service_principal_aad_check = false
  }
  "app_kv_usr_rimaz" = {
    "principal_id"                   = "3207c7da-5eed-46eb-abd3-1deb49b95e1e"
    "roles"                          = ["Owner", "Key Vault Secrets Officer"]
    skip_service_principal_aad_check = false
  }
}
