#1-backend.tf

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "dankemstate"
    prefix = "terraform/5112025"
    credentials = "gcp-cw-project-453819-a130e8726b46.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
