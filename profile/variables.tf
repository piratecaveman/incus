variable "name" {
  type = string
}

variable "config" {
  type    = map(any)
  default = {}
}

variable "description" {
  type    = string
  default = null
}

variable "project" {
  type    = string
  default = null
}

variable "remote" {
  type    = string
  default = null
}

variable "devices" {
  type    = map(any)
  default = {}
}
