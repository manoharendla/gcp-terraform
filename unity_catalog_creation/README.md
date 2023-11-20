## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_custom_role.workspace_creator](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_custom_role) | resource |
| [google_project_iam_member.sa2_can_create_workspaces](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_service_account.sa2](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_iam_policy.impersonatable](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_policy) | resource |
| [google_client_config.current](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |
| [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |
| [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_subnetwork) | data source |
| [google_iam_policy.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delegate_from"></a> [delegate\_from](#input\_delegate\_from) | Allow either user:user.name@example.com, group:deployers@example.com, or serviceAccount:sa1@project.iam.gserviceaccount.com to impersonate the created service account. | `list(string)` | n/a | yes |
| <a name="input_google_project_id"></a> [google\_project\_id](#input\_google\_project\_id) | Name of the gcp project | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_custom_role_url"></a> [custom\_role\_url](#output\_custom\_role\_url) | n/a |
| <a name="output_service_account"></a> [service\_account](#output\_service\_account) | Add this email as a user in the Databricks on Google Cloud account console |
