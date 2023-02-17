
provider "aws" {
  alias  = "primary"
  region = "eu-west-2"
}

provider "aws" {
  alias  = "secondary"
  region = "us-east-1"
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

