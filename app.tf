resource "hcp_vault_secrets_app" "secrets_app" {
  app_name    = var.app_name
  description = var.description
  project_id  = var.project_id
}