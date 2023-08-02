provider "google" {
    project = "devops-project-394716"
    region = "us-central1"
}

terraform {
    backend "gcs" {
        bucket = "bryson-tf-state-staging"
        prefix = "terraform/state"
    }

    required_providers {
      google = {
        source = "hashicorp/google"
        version = "~> 4.0"
      }
    }
}