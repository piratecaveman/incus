variable "name" {
  type = string
}

variable "driver" {
  type    = string
  default = "dir"
  validation {
    condition     = contains(["dir", "zfs", "lvm", "btrfs", "ceph", "cephfs", "cephobject"], var.driver)
    error_message = "Invalid driver name"
  }
}

variable "description" {
  type    = string
  default = null
}

variable "config" {
  type    = map(string)
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
