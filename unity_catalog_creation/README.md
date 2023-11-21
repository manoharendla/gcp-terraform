## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_databricks.accounts"></a> [databricks.accounts](#provider\_databricks.accounts) | 1.30.0 |
| <a name="provider_databricks.workspace"></a> [databricks.workspace](#provider\_databricks.workspace) | 1.30.0 |
| <a name="provider_google"></a> [google](#provider\_google) | 5.6.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [databricks_catalog.sandbox](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/catalog) | resource |
| [databricks_grants.sandbox](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/grants) | resource |
| [databricks_grants.things](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/grants) | resource |
| [databricks_metastore.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore) | resource |
| [databricks_metastore_assignment.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore_assignment) | resource |
| [databricks_metastore_data_access.first](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore_data_access) | resource |
| [databricks_schema.things](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/schema) | resource |
| [google_storage_bucket.unity_metastore](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_iam_member.unity_sa_admin](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_member) | resource |
| [google_storage_bucket_iam_member.unity_sa_reader](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_member) | resource |
| [random_string.naming](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [google_client_config.current](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |
| [google_client_openid_userinfo.me](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_openid_userinfo) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | ID of the databricks account | `string` | `"b64034d7-8e08-4472-a2e9-60f126a55bfc"` | no |
| <a name="input_databricks_workspace_id"></a> [databricks\_workspace\_id](#input\_databricks\_workspace\_id) | ID of the databricks workspace | `string` | n/a | yes |
| <a name="input_databricks_workspace_url"></a> [databricks\_workspace\_url](#input\_databricks\_workspace\_url) | workspace url | `string` | n/a | yes |
| <a name="input_google_project_id"></a> [google\_project\_id](#input\_google\_project\_id) | Name of the gcp project | `string` | n/a | yes |
| <a name="input_google_region"></a> [google\_region](#input\_google\_region) | Name of the google region | `string` | n/a | yes |
| <a name="input_google_service_account_email"></a> [google\_service\_account\_email](#input\_google\_service\_account\_email) | Name of the gcp project | `string` | n/a | yes |
| <a name="input_unity_name"></a> [unity\_name](#input\_unity\_name) | Name of the unity catalog | `string` | n/a | yes |

## Outputs

No outputs.
