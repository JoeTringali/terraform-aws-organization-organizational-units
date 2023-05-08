variable "organization_root_id" {
  description = "Organization Root ID"
  type        = string
}

variable "prod_ou_name" {
  description = "Production OU name"
  type        = string
  default     = "Prod"
}

variable "non_prod_ou_name" {
  description = "Non-production OU name"
  type        = string
  default     = "Non-Prod"
}