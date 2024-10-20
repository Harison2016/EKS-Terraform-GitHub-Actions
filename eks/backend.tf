terraform {
  required_version = "~> 1.9.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "harry-boto3-bucket"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
