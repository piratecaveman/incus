terraform {
  required_version = ">= 1.9.8"
  required_providers {
    incus = {
      source  = "lxc/incus"
      version = ">= 0.1.4"
    }
  }
}
