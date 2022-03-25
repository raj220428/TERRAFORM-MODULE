terraform {
  required_version = "= 1.1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "terraform280422"
    key    = "prod/ryan.tfstate"
    region = "ap-south-1"

    dynamodb_table = "terraform-prod-state-table"
  }
}

/*provider "aws" {
  #profile     = "newterraform"
  region = "ap-south-1"
  #region = var.region*/


/*terraform {
  backend "local" {
    path = "./raj/terraform/terraform.tfstate"
  }

}*/



