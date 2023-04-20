module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "caasasharedservices@canvia.com"
    AccountName               = "CAASA-Shared-Services"
    ManagedOrganizationalUnit = "Custom (ou-9jw1-27qyhyai)"
    SSOUserEmail              = "caasasharedservices@canvia.com"
    SSOUserFirstName          = "Shared Services"
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
