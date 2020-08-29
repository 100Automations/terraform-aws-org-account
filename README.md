# terraform-aws-org-account
a terraform module for creating an aws account within an organization.

## getting started
Create a new account 

**example**
```hcl

# terraform/global/accounts/main.tf

variable org {
  description = "name of the project organziaton this account will be part of"
  default = "demo-org"
}

variable lifecycle {
  description = "what lifecycle this account owns; usually one of develop,staging,prod,qa"
  default = "develop"
}

variable parent_organization_id {
  default = "123456789"
}

variable account_email {
  description = "the email address tied to this account"
  default = "demoproject+aws-develop@gmail.com"
}

module "aws_account" "account" {
  source = "git::https://github.com/100Automations/terraform-aws-org-account.git?ref=tags/0.1.0"
  org_name = var.org
  lifecycle = var.lifecycle
  account_email = var.account_email
}

output account_arn {
  value = aws_organizations_account.account.arn
}

output account_id {
  value = aws_organizations_account.account.id
}
```

# LICENSE
GPLv2.0
