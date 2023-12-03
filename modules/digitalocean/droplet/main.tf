resource "digitalocean_droplet" "droplet" {
  count             = var.droplet_count
  image             = var.image
  ipv6              = true
  name              = "app-srv-${count.index}"
  region            = var.region
  size              = var.size
  tags              = concat(var.tags, [digitalocean_tag.default_tags.id])
}

resource "digitalocean_tag" "default_tags" {
    name = var.default_tag
}