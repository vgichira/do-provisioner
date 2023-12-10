locals {
  project-name = "Production"
  environment  = "Production"
  ubuntu20_image_slug = "ubuntu-20-04-x64"
  ubuntu23_image_slug = "ubuntu-23-10-x64"
  servers = {
    mysql-srv = {
      image  = local.ubuntu20_image_slug
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    redis-srv = {
      image  = local.ubuntu23_image_slug
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    kafka-srv = {
      image  = local.ubuntu23_image_slug
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    user-microsvc-srv = {
      image  = local.ubuntu23_image_slug
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    inventory-microsvc-srv = {
      image  = local.ubuntu23_image_slug
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    order-microsvc-srv = {
      image  = local.ubuntu23_image_slug
      size   = "s-1vcpu-1gb"
      tags   = ["production"]
      region = "nyc3"
    }

    fullfilment-microsvc-srv = {
      image  = local.ubuntu23_image_slug
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
