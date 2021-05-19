terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
      version = "~> 0.4"
    }

    google = {
      source = "hashicorp/google"
      version = "3.67.0"
    }
  }
}

provider "google" {
  credentials = file("lacework-credentials.json")
  project = "<YOUR-PROJECT-ID>"
}

provider "lacework" {}

module "gcp_organization_config" {
  source = "lacework/config/gcp"
  version = "1.0.2"

  org_integration = true
  organization_id = "533549507610"
  project_id = "lacework-314116"
}

module "gcp_organization_level_audit_log" {
  source               = "lacework/audit-log/gcp"
  version              = "~> 1.0"
  bucket_force_destroy = true
  org_integration      = true
  organization_id      = "533549507610"

  use_existing_service_account = true
  service_account_name = module.gcp_organization_config.service_account_name
  service_account_private_key = module.gcp_organization_config.service_account_private_key
}