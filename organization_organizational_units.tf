resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = var.organization_root_id
}

resource "aws_organizations_organizational_unit" "security-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.security.id
}

resource "aws_organizations_organizational_unit" "security-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.security.id
}

resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = "Infrastructure"
  parent_id = var.organization_root_id
}

resource "aws_organizations_organizational_unit" "infrastructure-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_organizational_unit" "infrastructure-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.infrastructure.id
}

resource "aws_organizations_organizational_unit" "sandbox" {
  name      = "Sandbox"
  parent_id = var.organization_root_id
}

resource "aws_organizations_organizational_unit" "workloads" {
  name      = "Workloads"
  parent_id = var.organization_root_id
}

resource "aws_organizations_organizational_unit" "workloads-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.workloads.id
}

resource "aws_organizations_organizational_unit" "workloads-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.workloads.id
}

resource "aws_organizations_organizational_unit" "policystaging" {
  name      = "PolicyStaging"
  parent_id = var.organization_root_id
}

resource "aws_organizations_organizational_unit" "policystaging-security" {
  name      = "Security"
  parent_id = aws_organizations_organizational_unit.policystaging.id
}

resource "aws_organizations_organizational_unit" "policystaging-security-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.policystaging-security.id
}

resource "aws_organizations_organizational_unit" "policystaging-security-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.policystaging-security.id
}

resource "aws_organizations_organizational_unit" "policystaging-infrastructure" {
  name      = "Infrastructure"
  parent_id = aws_organizations_organizational_unit.policystaging.id
}

resource "aws_organizations_organizational_unit" "policystaging-infrastructure-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.policystaging-infrastructure.id
}

resource "aws_organizations_organizational_unit" "policystaging-infrastructure-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.policystaging-infrastructure.id
}

resource "aws_organizations_organizational_unit" "policystaging-workloads" {
  name      = "Workloads"
  parent_id = aws_organizations_organizational_unit.policystaging.id
}

resource "aws_organizations_organizational_unit" "policystaging-workloads-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.policystaging-workloads.id
}

resource "aws_organizations_organizational_unit" "policystaging-workloads-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.policystaging-workloads.id
}

resource "aws_organizations_organizational_unit" "policystaging-sandbox" {
  name      = "Sandbox"
  parent_id = aws_organizations_organizational_unit.policystaging.id
}
