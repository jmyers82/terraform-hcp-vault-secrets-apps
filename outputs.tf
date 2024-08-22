output "app_resource_name" {
  value = hcp_vault_secrets_app.secrets_app.resource_name
}

output "spn_name" {
  value = hcp_service_principal.vault_secrets_svc_principal.name  
}