<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.96.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.58.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcp_service_principal.vault_secrets_svc_principal_creator](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/service_principal) | resource |
| [hcp_service_principal.vault_secrets_svc_principal_reader](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/service_principal) | resource |
| [hcp_service_principal_key.app_spn_key](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/service_principal_key) | resource |
| [hcp_vault_secrets_app.secrets_app](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_app) | resource |
| [hcp_vault_secrets_app_iam_binding.secrets_app_iam_binding_creator](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_app_iam_binding) | resource |
| [hcp_vault_secrets_app_iam_binding.secrets_app_iam_binding_reader](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_app_iam_binding) | resource |
| [tfe_project.app_specific](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project) | resource |
| [tfe_project_variable_set.app_specific_var_set](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project_variable_set) | resource |
| [tfe_variable.app_specific__id](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.app_specific_client_id](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.app_specific_client_secret](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.app_specific_organization_id](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.app_specific_var_set](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_organization.tf_org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The name of the vault secrets app | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the vault secrets app | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The hcp project name for the vault secrets app | `string` | n/a | yes |
| <a name="input_tfe_organization"></a> [tfe\_organization](#input\_tfe\_organization) | The Terraform Cloud organization name | `string` | `"hashiconf22"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_resource_name"></a> [app\_resource\_name](#output\_app\_resource\_name) | n/a |
| <a name="output_reader_spn_name"></a> [reader\_spn\_name](#output\_reader\_spn\_name) | n/a |
<!-- END_TF_DOCS -->