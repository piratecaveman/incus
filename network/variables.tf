variable "name" {
  type = string
}

variable "config" {
  type    = map(string)
  default = {}
}

variable "description" {
  type    = string
  default = null
}

variable "type" {
  type    = string
  default = "bridge"
  validation {
    condition     = contains(["bridge", "macvlan", "sriov", "ovn", "physical"], var.type)
    error_message = "Invalid network type"
  }
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

