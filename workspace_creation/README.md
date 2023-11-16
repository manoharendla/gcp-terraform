## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | 1.29.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_databricks.accounts"></a> [databricks.accounts](#provider\_databricks.accounts) | 1.29.0 |
| <a name="provider_databricks.workspace"></a> [databricks.workspace](#provider\_databricks.workspace) | 1.29.0 |
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [databricks_group_member.allow_me_to_login](https://registry.terraform.io/providers/databricks/databricks/1.29.0/docs/resources/group_member) | resource |
| [databricks_mws_workspaces.this](https://registry.terraform.io/providers/databricks/databricks/1.29.0/docs/resources/mws_workspaces) | resource |
| [databricks_user.me](https://registry.terraform.io/providers/databricks/databricks/1.29.0/docs/resources/user) | resource |
| [databricks_group.admins](https://registry.terraform.io/providers/databricks/databricks/1.29.0/docs/data-sources/group) | data source |
| [google_client_config.current](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |
| [google_client_openid_userinfo.me](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_openid_userinfo) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | ID of the databricks account | `string` | n/a | yes |
| <a name="input_databricks_workspace_name"></a> [databricks\_workspace\_name](#input\_databricks\_workspace\_name) | Name of the workspace to be created | `string` | n/a | yes |
| <a name="input_google_project_id"></a> [google\_project\_id](#input\_google\_project\_id) | Name of the gcp project | `string` | `"databricks-automation"` | no |
| <a name="input_google_region"></a> [google\_region](#input\_google\_region) | Name of the google region | `string` | `"europe-west2"` | no |
| <a name="input_google_service_account_email"></a> [google\_service\_account\_email](#input\_google\_service\_account\_email) | Name of the gcp project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_custom_role_url"></a> [custom\_role\_url](#output\_custom\_role\_url) | n/a |
| <a name="output_service_account"></a> [service\_account](#output\_service\_account) | Add this email as a user in the Databricks on Google Cloud account console |
| <a name="output_workspace_url"></a> [workspace\_url](#output\_workspace\_url) | n/a |
