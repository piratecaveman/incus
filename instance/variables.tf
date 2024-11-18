variable "name" {
  type = string
}

variable "image" {
  type    = string
  default = "images:ubuntu/24.04/cloud/amd64"
}

variable "source_instances" {
  type    = map(any)
  default = null
}

variable "description" {
  type    = string
  default = null
}

variable "type" {
  type    = string
  default = "container"
  validation {
    condition     = contains(["container", "virtual-machine"], var.type)
    error_message = "Invalid instance type"
  }
}

variable "ephemeral" {
  type    = bool
  default = false
}

variable "running" {
  type    = bool
  default = true
}

variable "wait_for_network" {
  type    = bool
  default = true
}

variable "profiles" {
  type    = set(string)
  default = []
}

variable "devices" {
  type    = map(any)
  default = {}
}

variable "files" {
  type    = map(any)
  default = {}
}

variable "config" {
  type    = map(any)
  default = {}
}

variable "project" {
  type    = string
  default = null
}

variable "remote" {
  type    = string
  default = null
}

variable "target" {
  type    = string
  default = null
}
