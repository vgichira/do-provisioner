output "droplets_ipv4_address" {
  value = { for key, value in digitalocean_droplet.droplet : key => value.ipv4_address }
}

output "urn" {
  value = { for key, value in digitalocean_droplet.droplet : key => value.urn }
}

output "id" {
  value = { for key, value in digitalocean_droplet.droplet : key => value.id }
}
