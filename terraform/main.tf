module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "caasaappsdev@canvia.com"
    AccountName               = "CAASA Apps DEV"
    ManagedOrganizationalUnit = "Custom (ou-9jw1-59qao8t1)"
    SSOUserEmail              = "caasaappsdev@canvia.com"
    SSOUserFirstName          = "APPS DEV"
    SSOUserLastName           = "CAASA"
  }

  account_tags = {
    "ENV" = "DEV"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp"
    change_reason       = "Despliegue autimatizado por Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
