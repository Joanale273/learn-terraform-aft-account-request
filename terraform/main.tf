module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "XXXX@XXX.com"
    AccountName               = "CAASA Apps DEV"
    ManagedOrganizationalUnit = "Custom (ou-XXX-XXXXX)"
    SSOUserEmail              = "XXX@XX.com"
    SSOUserFirstName          = "APPS DEV"
    SSOUserLastName           = "XXXX"
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
