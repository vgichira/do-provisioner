resource "digitalocean_project" "projects" {
  name = var.project_name
  description = var.description
  purpose = var.purpose
  environment = var.environment
  resources = var.resources
  # is_default = var.default
}
