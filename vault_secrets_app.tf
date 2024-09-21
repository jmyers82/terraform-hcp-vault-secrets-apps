# hcp vault secret app
resource "hcp_vault_secrets_app" "secrets_app" {
  app_name    = var.app_name
  description = var.description
  # project_id  = lower("project/${var.project_name}")
}

#################### App Secret Reader Role ####################
# hcp service principal for vault secrets
resource "hcp_service_principal" "vault_secrets_svc_principal_reader" {
  name = "vs-${var.app_name}-reader"
}

# hcp vault secret app iam binding
resource "hcp_vault_secrets_app_iam_binding" "secrets_app_iam_binding_reader" {
  resource_name = hcp_vault_secrets_app.secrets_app.resource_name
  principal_id  = hcp_service_principal.vault_secrets_svc_principal_reader.resource_id
  role          = "roles/secrets.app-secret-reader"
}
#################################################################


##################### App Secret Creator #####################
# hcp service principal for vault secrets
resource "hcp_service_principal" "vault_secrets_svc_principal_creator" {
  name = "vs-${var.app_name}-mgr"
}

# hcp vault secret app iam binding
resource "hcp_vault_secrets_app_iam_binding" "secrets_app_iam_binding_creator" {
  resource_name = hcp_vault_secrets_app.secrets_app.resource_name
  principal_id  = hcp_service_principal.vault_secrets_svc_principal_creator.resource_id
  role          = "roles/secrets.app-manager"
}

resource "hcp_service_principal_key" "app_spn_key" {
  service_principal = hcp_service_principal.vault_secrets_svc_principal_creator.resource_name
}
#################################################################