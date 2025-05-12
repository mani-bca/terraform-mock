resource "aws_organizations_account" "member" {
  for_each = {
    for acc in var.member_accounts :
    acc.email => acc
  }

  name      = each.value.name
  email     = each.value.email
  role_name = "OrganizationAccountAccessRole"

  # Create or Invite
  create_account = each.value.create
  invite_account = each.value.invite

  depends_on = [aws_organizations_organizational_unit.ou]

  lifecycle {
    create_before_destroy = true
  }
}