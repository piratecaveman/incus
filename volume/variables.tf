variable "name" {
  type = string
}

variable "pool" {
  type = string
}

variable "description" {
  type    = string
  default = null
}

variable "type" {
  type    = string
  default = "custom"
}

variable "content_type" {
  type    = string
  default = "block"
  validation {
    condition     = contains(["filesystem", "block"], var.content_type)
    error_message = "Invalid content type"
  }
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
