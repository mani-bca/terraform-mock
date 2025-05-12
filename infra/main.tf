provider "aws" {
  region = "us-east-1"
}

module "aws_organization" {
  source = "./modules/aws_organization"

  org_feature_set      = "ALL"
  root_account_email   = "your-root-email@example.com"
  organizational_units = ["dev", "stage", "prod"]

  member_accounts = [
    {
      name     = "dev-account"
      email    = "dev@example.com"
      create   = true   # Create new account (set to false for existing account)
      ou       = "dev"
      invite   = false # If invite is true, account will be invited
    },
    {
      name     = "stage-account"
      email    = "stage@example.com"
      create   = true
      ou       = "stage"
      invite   = false
    },
    {
      name     = "prod-account"
      email    = "prod@example.com"
      create   = false
      ou       = "prod"
      invite   = true  # Inviting existing account
    }
  ]

  scp_policy = "./policies/deny_services.json"
}