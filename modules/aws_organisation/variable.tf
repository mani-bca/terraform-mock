variable "org_feature_set" {
  type    = string
  default = "ALL"
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