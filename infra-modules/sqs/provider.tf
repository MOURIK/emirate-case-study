provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::111111:role/myrole"
  }

}

terraform {
  required_version = "1.3.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.57.0"
    }
  }
}