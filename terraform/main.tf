module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "caasasapdev@canvia.com"
    AccountName               = "CAASA-SAP-DEV"
    ManagedOrganizationalUnit = "Custom (ou-9jw1-59qao8t1)"
    SSOUserEmail              = "caasasapdev@canvia.com"
    SSOUserFirstName          = "SAP DEV"
    SSOUserLastName           = "CAASA"
  }

  account_tags = {
    "ENV" = "PRD"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
