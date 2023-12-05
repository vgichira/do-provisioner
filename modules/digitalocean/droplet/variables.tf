variable "default_tag" {
  type    = string
  default = "terraform"
}

variable "servers" {
  type = map(object({
    image = string
    size = string
    tags = list(string)
    region = string
  }))
}
