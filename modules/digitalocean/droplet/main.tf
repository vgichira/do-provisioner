resource "digitalocean_droplet" "droplet" {
  for_each  = var.servers
  name      = each.key
  image     = each.value.image
  ipv6      = true
  region    = each.value.region
  size      = each.value.size
  tags      = concat(each.value.tags, [digitalocean_tag.default_tags.id])
}

resource "digitalocean_tag" "default_tags" {
    name = var.default_tag
}
