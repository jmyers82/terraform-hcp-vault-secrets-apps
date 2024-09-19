variable "app_name" {
  type        = string
  description = "The name of the vault secrets app"

  validation {
    condition     = length(var.app_name) > 0
    error_message = "The app name must not be empty"
  }
  validation {
    condition     = length(var.app_name) < 36
    error_message = "The app name must be less than 36 characters"
  }
  validation {
    condition     = length(var.app_name) > 3
    error_message = "The app name must be greater than 3 characters"
  }
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]*$", var.app_name))
    error_message = "The app name must contain only alphanumeric characters and dashes"
  }
  validation {
    condition     = can(regex("^[a-zA-Z].+", var.app_name))
    error_message = "The app name must start with an alpha character"
  }
}

variable "description" {
  type        = string
  description = "The description of the vault secrets app"

  validation {
    condition     = length(var.description) > 0
    error_message = "The description must not be empty"
  }
  validation {
    condition     = length(var.description) < 256
    error_message = "The description must be less than 256 characters"
  }
}

variable "project_name" {
  type        = string
  description = "The hcp project name for the vault secrets app"
}

variable "tfe_organization" {
  type        = string
  description = "The Terraform Cloud organization name"
  default = "hashiconf22"  
}