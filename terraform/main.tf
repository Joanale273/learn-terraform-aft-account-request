module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "caasadedicadoqas@canvia.com"
    AccountName               = "CAASA Servicios Dedicados QA"
    ManagedOrganizationalUnit = "Custom (ou-9jw1-hckjalpl)"
    SSOUserEmail              = "caasadedicadoqas@canvia.com"
    SSOUserFirstName          = "Servicios Dedicados"
    SSOUserLastName           = "CAASA QA"
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
