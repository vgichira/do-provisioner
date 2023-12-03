variable "project_name" {
  type = string
  description = "Name of the project"
}

variable "description" {
  type = string
  default = ""
  description = "Description of the scope of the project"
}

variable "purpose" {
  type = string
  default = "Web Application"
  description = "Purpose of the project. If not specified, it defaults to Web Application"
}

variable "environment" {
  type = string
  description = "Environment of the project"
}

variable "resources" {
  type = set(string)
  default = []
  description = "A list of all resources associated with the peoject"
}

variable "default" {
    type = bool
    description = "Boolean indicating whether or not the project is the default project"
}
