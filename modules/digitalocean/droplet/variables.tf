variable "droplet_count" {
  type = number
  default = 1
}

variable "image" {
  type = string
}

variable "size" {
  type = string
}

variable "region" {
  type    = string
  default = "nyc1"
}

variable "default_tag" {
  type    = string
  default = "terraform"
}