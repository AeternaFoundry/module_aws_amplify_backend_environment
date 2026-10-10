variable "amplify_backend_environments" {
  description = <<EOT
Map of amplify_backend_environments, attributes below
Required:
    - app_id
    - environment_name
Optional:
    - deployment_artifacts
    - region
    - stack_name
EOT

  type = map(object({
    app_id               = string
    environment_name     = string
    deployment_artifacts = optional(string)
    region               = optional(string)
    stack_name           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.amplify_backend_environments : (
        v.deployment_artifacts == null || (can(regex("^[0-9A-Za-z-]{1,100}$", v.deployment_artifacts)))
      )
    ])
    error_message = "should be not be more than 100 alphanumeric or hyphen characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_backend_environments : (
        can(regex("^[a-z]{2,10}$", v.environment_name))
      )
    ])
    error_message = "should be between 2 and 10 characters (only lowercase alphabetic)"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_backend_environments : (
        v.stack_name == null || (can(regex("^[0-9A-Za-z-]{1,100}$", v.stack_name)))
      )
    ])
    error_message = "should be not be more than 100 alphanumeric or hyphen characters"
  }
}

