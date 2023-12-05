locals {
  project-name = "Production"
  environment  = "Production"
  servers = {
    mysql-srv = {
      image  = "ubuntu-20-04-x64"
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    redis-srv = {
      image  = "ubuntu-23-10-x64"
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    kafka-srv = {
      image  = "ubuntu-23-10-x64"
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    user-microsvc-srv = {
      image  = "ubuntu-23-10-x64"
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    inventory-microsvc-srv = {
      image  = "ubuntu-23-10-x64"
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    order-microsvc-srv = {
      image  = "ubuntu-23-10-x64"
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    fullfilment-microsvc-srv = {
      image  = "ubuntu-23-10-x64"
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }
  }
}

module "project" {
  source       = "../../modules/digitalocean/project"
  project_name = local.project-name
  environment  = local.environment
  default      = false
  resources    = values(module.droplet.urn)
}

module "droplet" {
  source  = "../../modules/digitalocean/droplet"
  servers = local.servers
}
