variable org {
  description = "a project name that will be a namespace and identifier for all resources in this account. Example 'fola', 'tdm', 'three11'"
}

variable stage {
  description = "short code for the environment or stage in the app lifecycle this account represents. Example: 'stg', 'prd', 'dev', 'log', 'qat'"
}

variable iam_user_access_to_billing {
  description = "can default IAM user read organiztaion billing. one of ALLOW or DENY"
  default = "DENY"
}

variable account_email {
  description = "the email associated with the account"
}

variable org_account_default_role_name {
  description = "the default role created in a new account. The role can be assumed to from the root account"
  default = "OrgAccountAssumedRole"
}

variable parent_organization_id {
  description = "the root account organization id"
}

variable tags {
  type = map
  default = {}
}
