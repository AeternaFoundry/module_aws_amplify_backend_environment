output "amplify_backend_environments_id" {
  description = "Map of id values across all amplify_backend_environments, keyed the same as var.amplify_backend_environments"
  value       = { for k, v in aws_amplify_backend_environment.amplify_backend_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "amplify_backend_environments_app_id" {
  description = "Map of app_id values across all amplify_backend_environments, keyed the same as var.amplify_backend_environments"
  value       = { for k, v in aws_amplify_backend_environment.amplify_backend_environments : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "amplify_backend_environments_arn" {
  description = "Map of arn values across all amplify_backend_environments, keyed the same as var.amplify_backend_environments"
  value       = { for k, v in aws_amplify_backend_environment.amplify_backend_environments : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "amplify_backend_environments_deployment_artifacts" {
  description = "Map of deployment_artifacts values across all amplify_backend_environments, keyed the same as var.amplify_backend_environments"
  value       = { for k, v in aws_amplify_backend_environment.amplify_backend_environments : k => v.deployment_artifacts if v.deployment_artifacts != null && length(v.deployment_artifacts) > 0 }
}
output "amplify_backend_environments_environment_name" {
  description = "Map of environment_name values across all amplify_backend_environments, keyed the same as var.amplify_backend_environments"
  value       = { for k, v in aws_amplify_backend_environment.amplify_backend_environments : k => v.environment_name if v.environment_name != null && length(v.environment_name) > 0 }
}
output "amplify_backend_environments_region" {
  description = "Map of region values across all amplify_backend_environments, keyed the same as var.amplify_backend_environments"
  value       = { for k, v in aws_amplify_backend_environment.amplify_backend_environments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "amplify_backend_environments_stack_name" {
  description = "Map of stack_name values across all amplify_backend_environments, keyed the same as var.amplify_backend_environments"
  value       = { for k, v in aws_amplify_backend_environment.amplify_backend_environments : k => v.stack_name if v.stack_name != null && length(v.stack_name) > 0 }
}

