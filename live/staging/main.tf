module "droplet" {
  source        = "../../modules/digitalocean/droplet"
  droplet_count = 3
  image         = "ubuntu-20-04-x64"
  size          = "s-1vcpu-1gb"
  tags          = ["staging"]
}
