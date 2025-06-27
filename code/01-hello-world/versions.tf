terraform {
  required_version = ">= 1.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6, < 7"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 6, < 7"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-cloud-run/v0.17.2"
  }

  provider_meta "google-beta" {
    module_name = "blueprints/terraform/terraform-google-cloud-run/v0.17.2"
  }
}
