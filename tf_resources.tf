resource "tfe_project" "app_specific" {
  organization = var.tfe_organization
  name         = lower("${var.app_name}-app")
}

resource "tfe_variable_set" "app_specific_var_set" {
  name         = lower("${var.app_name}-app")
  description  = "Auth Vars for ${var.app_name} vault secrets app."
  organization = var.tfe_organization
}

resource "tfe_project_variable_set" "app_specific_var_set" {
  variable_set_id = tfe_variable_set.app_specific_var_set.id
  project_id      = tfe_project.app_specific.id
}

resource "tfe_variable" "app_specific_client_id" {
  key             = "HCP_CLIENT_ID"
  value           = hcp_service_principal_key.app_spn_key.client_id
  category        = "env"
  description     = "Client ID for the HCP Service Principal"
  variable_set_id = tfe_variable_set.app_specific_var_set.id
}

resource "tfe_variable" "app_specific_client_secret" {
  key             = "HCP_CLIENT_SECRET"
  value           = hcp_service_principal_key.app_spn_key.client_secret
  category        = "env"
  description     = "HCP Service Principal Client Secret"
  variable_set_id = tfe_variable_set.app_specific_var_set.id
}

resource "tfe_variable" "app_specific_organization_id" {
  key             = "ORGANIZATION_ID"
  value           = data.tfe_organization.tf_org.id
  category        = "env"
  description     = "HCP Organization ID"
  variable_set_id = tfe_variable_set.app_specific_var_set.id
}

resource "tfe_variable" "app_specific__id" {
  key             = "PROJECT_ID"
  value           = tfe_project.app_specific.id
  category        = "env"
  description     = "PROJECT_ID"
  variable_set_id = tfe_variable_set.app_specific_var_set.id
}

# resource "tfe_variable" "app_specific_tfe_id" {
#   key             = "TFE_TOKEN"
#   value           = var.TFE_TOKEN_TFE
#   category        = "env"
#   description     = "TFE_TOKEN - hashiconf22"
#   variable_set_id = tfe_variable_set.app_specific_var_set.id
# }