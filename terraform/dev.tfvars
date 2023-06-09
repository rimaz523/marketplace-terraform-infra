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

apims = {
  "backend" = {
    company = "MarketAgora"
    email   = "rimazmohommed523@gmail.com"
    sku     = "Consumption_0"
  }
}

apis = {
  "Backend" = {
    api_revision               = "1"
    api_version                = "v1"
    path                       = "api"
    swagger_json_relative_path = "/swagger/v1/swagger.json"
    swagger_format             = "openapi+json-link"
    service_url                = "https://marketplace-dev-dotnet-api.azurewebsites.net"
  }
}
