terraform {
 required_version = ">= 1.1.5"
 required_providers {
   google = {
     source  = "hashicorp/google"
     version = ">= 3.53"
   }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.0.0"
    }
 }
}