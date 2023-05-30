variable "resource_group_location" {
  default     = "#{resource_group_location}#"
  description = "Location of the resource group."
}

variable "environment" {
  default     = "#{environment}#"
  description = "The deployed environment."
}

variable "project" {
  default     = "#{project}#"
  description = "Name of the project."
}

variable "app_service_sku" {
  default     = "#{app_service_sku}#"
  description = "SKU for the app service plan."
}

variable "app_service_os" {
  default     = "#{app_service_os}#"
  description = "Operating system for the app service plan."
}
