resource "digitalocean_database_firewall" "the-fence" {
  cluster_id = var.cluster_id

  rule {
    type = each.key
    value = each.value
  }

  for_each = var.rules
}