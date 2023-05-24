data "aws_organizations_organization" "org" {}

resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = data.aws_organizations_organization.org.roots[0].id
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
  parent_id = data.aws_organizations_organization.org.roots[0].id
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
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "workloads" {
  name      = "Workloads"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "workloads-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.workloads.id
}

resource "aws_organizations_organizational_unit" "workloads-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.workloads.id
}

resource "aws_organizations_organizational_unit" "policy-staging" {
  name      = "Policy Staging"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "policy-staging-security" {
  name      = "Security"
  parent_id = aws_organizations_organizational_unit.policy-staging.id
}

resource "aws_organizations_organizational_unit" "policy-staging-security-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.policy-staging-security.id
}

resource "aws_organizations_organizational_unit" "policy-staging-security-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.policy-staging-security.id
}

resource "aws_organizations_organizational_unit" "policy-staging-infrastructure" {
  name      = "Infrastructure"
  parent_id = aws_organizations_organizational_unit.policy-staging.id
}

resource "aws_organizations_organizational_unit" "policy-staging-infrastructure-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.policy-staging-infrastructure.id
}

resource "aws_organizations_organizational_unit" "policy-staging-infrastructure-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.policy-staging-infrastructure.id
}

resource "aws_organizations_organizational_unit" "policy-staging-workloads" {
  name      = "Workloads"
  parent_id = aws_organizations_organizational_unit.policy-staging.id
}

resource "aws_organizations_organizational_unit" "policy-staging-workloads-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.policy-staging-workloads.id
}

resource "aws_organizations_organizational_unit" "policy-staging-workloads-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.policy-staging-workloads.id
}

resource "aws_organizations_organizational_unit" "policy-staging-sandbox" {
  name      = "Sandbox"
  parent_id = aws_organizations_organizational_unit.policy-staging.id
}

resource "aws_organizations_organizational_unit" "suspended" {
  name      = "Suspended"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "individual-business-users" {
  name      = "Individual Business Users"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "exceptions" {
  name      = "Exceptions"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "deployments" {
  name      = "Deployments"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "deployments-prod" {
  name      = var.prod_ou_name
  parent_id = aws_organizations_organizational_unit.deployments.id
}

resource "aws_organizations_organizational_unit" "deployments-nonprod" {
  name      = var.non_prod_ou_name
  parent_id = aws_organizations_organizational_unit.deployments.id
}

resource "aws_organizations_organizational_unit" "transitional" {
  name      = "Transitional"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_organizational_unit" "business-continuity" {
  name      = "Business Continuity"
  parent_id = data.aws_organizations_organization.org.roots[0].id
}
