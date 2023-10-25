resource "aws_organizations_account" "root" {
  for_each  = local.accounts_root
  name      = each.value.name
  email     = each.value.email
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_account" "first_level" {
  for_each  = local.accounts_first_level
  name      = each.value.name
  email     = each.value.email
  parent_id = aws_organizations_organizational_unit.first_ou[each.value.parent].id
}

resource "aws_organizations_account" "second_level" {
  for_each  = local.accounts_second_level
  name      = each.value.name
  email     = each.value.email
  parent_id = aws_organizations_organizational_unit.second_ou[each.value.parent].id
}

locals {
  accounts_root         = { for account in var.organization.accounts : "root-${account.name}" => merge(account, { "parent" = "root" }) }
  accounts_first_level  = merge([for unit in var.organization.units : { for account in unit.accounts : "${unit.name}-${account.name}" => merge(account, { "parent" = unit.name }) } if contains(keys(unit), "accounts")]...)
  accounts_second_level = merge(flatten([for unit in var.organization.units : [for sub_unit in unit.units : { for account in sub_unit.accounts : "${unit.name}-${sub_unit.name}-${account.name}" => merge(account, { "parent" = "${sub_unit.name}-${unit.name}" }) } if contains(keys(sub_unit), "accounts")]])...)
}
