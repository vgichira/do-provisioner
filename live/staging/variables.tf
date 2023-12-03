variable "do_token" {
  type        = string
  description = "Personal access token to authenticate Digital Ocean APIs"
}

variable "tags" {
  type    = set(string)
  default = ["staging"]
}