# hcp vault secret app
resource "hcp_vault_secrets_app" "secrets_app" {
  app_name    = var.app_name
  description = var.description
  # project_id  = lower("project/${var.project_name}")
}


# hcp service principal for vault secrets
resource "hcp_service_principal" "vault_secrets_svc_principal" {
  name = "vault-secrets-${var.app_name}"  
}


# hcp vault secret app iam binding
resource "hcp_vault_secrets_app_iam_binding" "secrets_app_iam_binding" {
  resource_name = hcp_vault_secrets_app.secrets_app.resource_name
  principal_id  = hcp_service_principal.vault_secrets_svc_principal.resource_id
  role          = "roles/secrets.app-secret-reader"
}