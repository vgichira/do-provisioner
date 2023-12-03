variable "database_cluster_name" {
  type = string
  description = "Name of the database cluster to create"
}

variable "database_engine" {
  type = string
  description = "Database engine to be used by the cluster (pg/mysql/redis/mongodb/kafka)"
}

variable "cluster_size" {
  type = string
  default = "db-s-1vcpu-1gb"
  description = "Database droplet size for the cluster"
}

variable "cluster_region" {
  type = string
  default = "nyc1"
  description = "Digitalocean region where the database will be created"
}

variable "node_count" {
  type = number
  default = 1
  description = "Number of nodes to be created"
}

variable "cluster_version" {
  type = string
  default = "8"
  description = "Version of the database cluster"
}

variable "tags" {
  type = list(string)
  default = []
}
