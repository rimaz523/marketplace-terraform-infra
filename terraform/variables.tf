variable "environment" {
  default     = "#{environment}#"
  description = "The deployed environment."
}

variable "project" {
  default     = "#{project}#"
  description = "Name of the project."
}

variable "resource_group_location" {
  default     = "australiaeast"
  description = "Location of the resource group."
}
