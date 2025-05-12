variable "org_feature_set" {
  default = "ALL"
}

variable "root_account_email" {
  type = string
}

variable "organizational_units" {
  type = list(string)
}

variable "member_accounts" {
  type = list(object({
    name    = string
    email   = string
    create  = bool
    invite  = bool
    ou      = string
  }))
}

variable "scp_policy" {
  type = string
}