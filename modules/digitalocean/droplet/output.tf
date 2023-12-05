output "droplets_ipv4_address" {
  value = digitalocean_droplet.droplet[*].ipv4_address
}

output "droplets_ipv6_address" {
  value = digitalocean_droplet.droplet[*].ipv6_address
}

output "droplets_status" {
  value = digitalocean_droplet.droplet[*].status
}

output "urn" {
  value = digitalocean_droplet.droplet[*].urn
}

output "id" {
  value = digitalocean_droplet.droplet[*].id
}
