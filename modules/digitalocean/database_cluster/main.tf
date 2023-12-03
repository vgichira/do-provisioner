resource "digitalocean_database_cluster" "mysql" {
  name = var.database_cluster_name
  engine = var.database_engine
  size = var.cluster_size
  region = var.cluster_region
  node_count = var.node_count
  version = var.cluster_version
  tags = var.tags
}
