module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "caasadedicadodev@canvia.com"
    AccountName               = "CAASA-Servicios-Dedicados-DEV"
    ManagedOrganizationalUnit = "Custom (ou-9jw1-59qao8t1)"
    SSOUserEmail              = "caasadedicadodev@canvia.com"
    SSOUserFirstName          = "Servicios Dedicados"
    SSOUserLastName           = "CAASA DEV"
  }

  account_tags = {
    "ENV" = "DEV"
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
