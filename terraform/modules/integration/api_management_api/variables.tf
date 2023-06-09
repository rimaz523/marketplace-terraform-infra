variable "name" {
  description = "Name of the API."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the API should reside in."
  type        = string
}

variable "project" {
  description = "Name of the project."
  type        = string
}

variable "environment" {
  description = "The deployed environment."
  type        = string
}

variable "api_management_name" {
  description = "Name of the APIM instance the API will be published into."
  type        = string
}

variable "api_version" {
  description = "Version of the API."
  type        = string
}

variable "api_revision" {
  description = "Revision of the API."
  type        = string
}

variable "path" {
  description = "Path for the API."
  type        = string
}

variable "service_url" {
  description = "URL of the domain servicing the api requests."
  type        = string
}

variable "swagger_json_relative_path" {
  description = "Relative path of the swagger json url."
  type        = string
}

variable "swagger_format" {
  description = "Format of the swagger file."
  type        = string
}
