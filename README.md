<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 6.32 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 6.32 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.32.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gh_oidc"></a> [gh\_oidc](#module\_gh\_oidc) | terraform-google-modules/github-actions-runners/google//modules/gh-oidc | ~> 4.0 |

## Resources

| Name | Type |
|------|------|
| [google_project_iam_member.sa](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_service_account.sa](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | n/a | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `string` | n/a | yes |
| <a name="input_reponame"></a> [reponame](#input\_reponame) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool_name"></a> [pool\_name](#output\_pool\_name) | n/a |
| <a name="output_provider"></a> [provider](#output\_provider) | n/a |
| <a name="output_sa"></a> [sa](#output\_sa) | n/a |
<!-- END_TF_DOCS -->