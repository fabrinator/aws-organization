resource "aws_organizations_organizational_unit" "first_ou" {
  for_each  = local.first_ou
  name      = each.value.ou
  parent_id = aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_organizational_unit" "second_ou" {
  for_each  = local.second_ou
  name      = each.value.ou
  parent_id = aws_organizations_organizational_unit.first_ou[each.value.parent].id
}

locals {
  first_ou  = { for unit in var.organization.units : unit.name => { "parent" = "root", ou = unit.name } }
  second_ou = merge([for unit in var.organization.units : { for child_unit in unit.units : join("-", [child_unit.name, unit.name]) => { "parent" = unit.name, "ou" = child_unit.name } }]...)
}

