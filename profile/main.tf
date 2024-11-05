resource "incus_profile" "profile" {
  name        = var.name
  config      = var.config
  project     = var.project
  remote      = var.remote
  description = var.description

  dynamic "device" {
    for_each = var.devices
    content {
      name       = device.value.name
      type       = device.value.type
      properties = device.value.properties
    }
  }
}
