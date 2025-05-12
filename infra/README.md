<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_organization"></a> [aws\_organization](#module\_aws\_organization) | ./modules/aws_organization | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_member_accounts"></a> [member\_accounts](#input\_member\_accounts) | n/a | <pre>list(object({<br/>    name    = string<br/>    email   = string<br/>    create  = bool<br/>    invite  = bool<br/>    ou      = string<br/>  }))</pre> | n/a | yes |
| <a name="input_org_feature_set"></a> [org\_feature\_set](#input\_org\_feature\_set) | n/a | `string` | `"ALL"` | no |
| <a name="input_organizational_units"></a> [organizational\_units](#input\_organizational\_units) | n/a | `list(string)` | n/a | yes |
| <a name="input_root_account_email"></a> [root\_account\_email](#input\_root\_account\_email) | n/a | `string` | n/a | yes |
| <a name="input_scp_policy"></a> [scp\_policy](#input\_scp\_policy) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organization_id"></a> [organization\_id](#output\_organization\_id) | n/a |
| <a name="output_organizational_units"></a> [organizational\_units](#output\_organizational\_units) | n/a |
<!-- END_TF_DOCS -->