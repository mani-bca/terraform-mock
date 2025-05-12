variable "member_accounts" {
  type = list(object({
    name    = string
    email   = string
    create  = bool
    invite  = bool
    ou      = string
  }))
}