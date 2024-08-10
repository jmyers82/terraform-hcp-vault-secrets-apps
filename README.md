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
| [hcp_vault_secrets_app.secrets_app](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/vault_secrets_app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | The name of the vault secrets app | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the vault secrets app | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project id for the vault secrets app | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_resource_name"></a> [app\_resource\_name](#output\_app\_resource\_name) | n/a |
<!-- END_TF_DOCS -->