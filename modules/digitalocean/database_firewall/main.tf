resource "digitalocean_database_firewall" "the-fence" {
  cluster_id = var.cluster_id

  for_each = var.firewall_rules

  dynamic "rule" {
    for_each = each.value

    content {
      type = each.key
      value = rule.value
    }
  }
}
