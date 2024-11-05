resource "incus_storage_volume" "volume" {
  name         = var.name
  pool         = var.pool
  description  = var.description
  type         = var.type
  content_type = var.content_type
  config       = var.config
  project      = var.project
  remote       = var.remote
  target       = var.target
}

output "volume" {
  value = incus_storage_volume.volume
}
