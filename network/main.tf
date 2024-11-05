resource "incus_network" "network" {
  name        = var.name
  description = var.description
  type        = var.type
  config      = var.config
  project     = var.project
  remote      = var.remote
  target      = var.target
}

output "network" {
  value = incus_network.network
}
