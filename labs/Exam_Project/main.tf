terraform {
  required_version = "1.6.6"
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">= 1.15.6"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

