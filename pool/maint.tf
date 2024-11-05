resource "incus_storage_pool" "pool" {
  name        = var.name
  driver      = var.driver
  description = var.description
  config      = var.config
  project     = var.project
  remote      = var.remote
  target      = var.target
}

output "pool" {
  value = incus_storage_pool.pool
}
