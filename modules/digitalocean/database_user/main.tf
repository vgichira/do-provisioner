resource "digitalocean_database_user" "users" {
  cluster_id = var.cluster_id
  name = each.value
  for_each = var.database_users
}
