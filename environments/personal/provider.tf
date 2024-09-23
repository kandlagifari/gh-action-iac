/* ----------------------------- Terraform Block ---------------------------- */

terraform {
  # required_version = "~> 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31"
    }
  }

  backend "s3" {
    bucket = "terraform-state-testing-981500400088-us-east-1"
    key    = "personal/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-lock-testing-981500400088-us-east-1"
    encrypt        = true
  }
}


/* ----------------------------- Provider Block ----------------------------- */

provider "aws" {
  region                 = "ap-southeast-3"
  skip_region_validation = true
}
