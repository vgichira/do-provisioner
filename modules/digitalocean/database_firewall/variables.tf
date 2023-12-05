variable "cluster_id" {
  type = string
}

variable "firewall_rules" {
  type = map(set(string))
  default = {}
}
