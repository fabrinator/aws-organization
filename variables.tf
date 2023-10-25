variable "feature_set" {
  type        = string
  default     = "ALL"
  nullable    = false
  description = "The feature set of the organization. One of 'ALL' or 'CONSOLIDATED_BILLING'."
}

variable "aws_service_access_principals" {
  type        = list(string)
  default     = []
  nullable    = false
  description = "A list of AWS service principal names for which you want to enable integration with your organization."
}

variable "organization" {
  default = {}
  nullable = false
  description = "The organization with the tree of organizational units and accounts to construct. Defaults to an object with an empty list of units and accounts"
}
