module "aws_organizational_units" {
  source = "../aws_organizational_unit"
  organizational_units = var.organizational_units
  root_id = aws_organizations_organization.this.roots[0].id
}

module "aws_accounts" {
  source = "../aws_account"
  member_accounts = var.member_accounts
}

module "aws_scp" {
  source  = "../aws_scp"
  scp_policy = var.scp_policy
  accounts   = var.member_accounts
  organizational_units = var.organizational_units
}