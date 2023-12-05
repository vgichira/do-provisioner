terraform {
  backend "s3" {
    bucket         = "staging-terraform-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"

    dynamodb_table = "staging-terraform-state-locks"
    encrypt        = true
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.29"
    }
  }
}

# TODO: Add Remote S3 State Backend

provider "digitalocean" {
  token = var.do_token
}

provider "aws" {
  region = "us-east-2"
}
