resource "aws_organizations_policy" "scp_policy" {
  name        = "DenyECSS3Glue"
  description = "SCP that denies ECS, S3, and Glue services"
  type        = "SERVICE_CONTROL_POLICY"
  content     = file(var.scp_policy)
}

resource "aws_organizations_policy_attachment" "ou_attachment" {
  for_each = {
    for ou in var.organizational_units :
    ou => ou
  }

  policy_id = aws_organizations_policy.scp_policy.id
  target_id = aws_organizations_organizational_unit.ou[each.key].id
}

resource "aws_organizations_policy_attachment" "account_attachment" {
  for_each = {
    for acc in var.accounts :
    acc.email => acc
  }

  policy_id = aws_organizations_policy.scp_policy.id
  target_id = aws_organizations_account.member[each.key].id
}