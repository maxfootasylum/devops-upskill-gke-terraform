terraform {
  required_providers {
    google = {
      source      = "hashicorp/google"
      version     = "3.58.0"
      
    }
  }
  required_version = "~> 1.0.0"
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("service-account.json")
}

