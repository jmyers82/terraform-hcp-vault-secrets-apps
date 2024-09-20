<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcp_service_principal.vault_secrets_svc_principal](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/service_principal) | resource |
| [hcp_vault_secrets_app.secrets_app](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_app) | resource |
| [hcp_vault_secrets_app_iam_binding.secrets_app_iam_binding](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_app_iam_binding) | resource |

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
| <a name="output_spn_name"></a> [spn\_name](#output\_spn\_name) | n/a |
<!-- END_TF_DOCS -->