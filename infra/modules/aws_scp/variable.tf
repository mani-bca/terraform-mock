variable "scp_policy" {
  type = string
}

variable "accounts" {
  type = list(object({
    name    = string
    email   = string
    create  = bool
    invite  = bool
    ou      = string
  }))
}

variable "organizational_units" {
  type = list(string)
}