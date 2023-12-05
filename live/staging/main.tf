locals {
  project-name = "Staging"
  environment  = "Staging"
  database_cluster_name = "staging-cluster"
  database_engine = "mysql"
  database_name = "staging_db"
  database_users = ["johndoe", "janedoe"]
}

module "droplet" {
  source        = "../../modules/digitalocean/droplet"
  droplet_count = 2
  image         = "ubuntu-20-04-x64"
  size          = "s-1vcpu-1gb"
  tags          = ["staging"]
}

module "project" {
  source       = "../../modules/digitalocean/project"
  project_name = local.project-name
  environment = local.environment
  default = false
  resources = concat(module.droplet.urn, [module.database_cluster.urn])
}

module "database_cluster" {
  source = "../../modules/digitalocean/database_cluster"
  database_cluster_name = local.database_cluster_name
  database_engine = local.database_engine
  tags = ["staging", "terraform"]
}

module "database" {
  source = "../../modules/digitalocean/database"
  cluster_id = module.database_cluster.cluster_id
  database_name = local.database_name
}

module "database_user" {
  source = "../../modules/digitalocean/database_user"
  cluster_id = module.database_cluster.cluster_id
  database_users = local.database_users
}

module "database_firewall" {
  source = "../../modules/digitalocean/database_firewall"
  cluster_id = module.database_cluster.cluster_id
  firewall_rules = {
    ip_addr = ["41.60.235.204", "41.60.235.205"]
    droplet = module.droplet.id
  }

}