# Declaring the Terraform Block 
terraform {
  required_version = "1.4.6"
  required_providers {
    google = {
      source = "hashicorp/google"        #The Hashicorp Registry
      version = "4.63.1"                 #You can define any version of your choice based on the need of your environment
    }
  }

# Backend Configuration
  backend "gcs" {
    bucket  = "opi-state1"
    prefix  = "dev/terraform-state"    
  }
}