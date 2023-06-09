variable "project" {
  default     = "#{project}#"
  description = "Name of the project."
}

variable "environment" {
  default     = "#{environment}#"
  description = "The deployed environment."
}

variable "resource_groups" {
  description = "create resource groups in the project's environment"
  type = map(object({
    location = string
  }))
  default = {
    "app" = {
      location = "#{resource_group_location}#"
    },
    "data" = {
      location = "#{resource_group_location}#"
    },
    "common" = {
      location = "#{resource_group_location}#"
    }
  }
}

variable "service_plans" {
  description = "create app service plans"
  type = map(object({
    sku = string
    os  = string
  }))
  default = {
    "asp" = {
      sku = "#{app_service_sku}#"
      os  = "#{app_service_os}#"
    }
  }
}

variable "linux_webapps" {
  description = "create linux web apps for deploying the marketplace api and frontends"
  type = map(object({
    stack         = string
    stack_version = string
  }))
  default = {
    "api" = {
      stack         = "dotnet"
      stack_version = "6.0"
    },
    "react" = {
      stack         = "node"
      stack_version = "18-lts"
    },
    "vue" = {
      stack         = "node"
      stack_version = "18-lts"
    }
  }
}

variable "apims" {
  description = "create APIMs"
  type = map(object({
    company = string
    email   = string
    sku     = string
  }))
  default = {
    "backend" = {
      company = "#{company_name}#"
      email   = "#{company_email}#"
      sku     = "#{apim_sku}#"
    }
  }
}

variable "apis" {
  description = "create APIs"
  type = map(object({
    api_revision               = string
    api_version                = string
    path                       = string
    service_url                = string
    swagger_json_relative_path = string
    swagger_format             = string
  }))
  default = {
    "Backend" = {
      api_revision               = "1"
      api_version                = "v1"
      path                       = "api"
      service_url                = "#{api_domain_url}#"
      swagger_json_relative_path = "/swagger/v1/swagger.json"
      swagger_format             = "openapi+json-link"
    }
  }
}
