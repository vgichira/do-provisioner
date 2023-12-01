terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_droplet" "droplet" {
  count             = var.droplet_count
  graceful_shutdown = true
  image             = var.image
  ipv6              = true
  name              = "app-srv-${count.index}"
  region            = var.region
  size              = var.size
  tags              = [digitalocean_tag.default_tags.id]
}

resource "digitalocean_tag" "default_tags" {
    name = var.default_tag
}