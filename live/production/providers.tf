terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# TODO: Add Remote S3 State Backend

provider "digitalocean" {
  token = var.do_token
}
