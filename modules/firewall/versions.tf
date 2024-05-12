terraform {
 required_version = "0.11"
 required_providers {
   google = {
     source  = "hashicorp/google"
     version = "2.0.0"
   }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 1.60"
    }
 }
}