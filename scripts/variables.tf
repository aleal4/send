# Sets global variables for this Terraform project.

variable "app_name" {
  default = "flixtube444888"
}
variable "location" {
  default = "East US"
}

variable "admin_username" {
  default = "linux_admin"
}

variable "app_version" { # Can't be called version! That's a reserved word.
}

variable "client_id" {

}

variable "client_secret" {

}
