module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "caasasapqas@canvia.com"
    AccountName               = "CAASA SAP QAS"
    ManagedOrganizationalUnit = "Custom (ou-9jw1-hckjalpl)"
    SSOUserEmail              = "caasasapqas@canvia.com"
    SSOUserFirstName          = "SAP QA"
    SSOUserLastName           = "CAASA"
  }

  account_tags = {
    "ENV" = "QA"
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
