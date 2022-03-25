terraform {
  required_version = "= 1.1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  #profile = "newterraform"
  region  = "ap-south-1"
  #region = var.region
}





