project     = "marketplace"
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
