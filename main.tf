resource "aws_organizations_account" "account" {
  name  = "${var.org}-${var.stage}"
  email = var.account_email
  iam_user_access_to_billing = var.iam_user_access_to_billing
  role_name = var.org_account_default_role_name
  parent_id = var.parent_organziation_id

  lifecycle {
    ignore_changes = [role_name]
  }
  tags = var.tags
}

