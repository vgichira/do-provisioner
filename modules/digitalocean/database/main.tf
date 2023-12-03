resource "digitalocean_database_db" "database" {
  cluster_id = var.cluster_id
  name = var.database_name
}
