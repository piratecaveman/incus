resource "incus_instance" "instance" {
  name             = var.name
  image            = var.image
  description      = var.description
  type             = var.type
  ephemeral        = var.ephemeral
  running          = var.running
  wait_for_network = var.wait_for_network
  profiles         = var.profiles
  config           = var.config
  project          = var.project
  remote           = var.remote
  target           = var.target


  # maybe a bug?
  # dynamic "source_instance" {
  #   for_each = var.source_instances
  #   content {
  #     project  = source_instance.value.project
  #     name     = source_instance.value.name
  #     snapshot = source_instance.value.snapshot
  #   }
  # }

  dynamic "device" {
    for_each = var.devices
    content {
      name       = device.value.name
      type       = device.value.type
      properties = device.value.properties
    }
  }

  dynamic "file" {
    for_each = var.files
    content {
      content            = file.value.content
      source_path        = file.value.source_path
      target_path        = file.value.target_path
      uid                = file.value.uid
      gid                = file.value.gid
      mode               = file.value.mode
      create_directories = file.value.create_directories
    }
  }
}

output "instance" {
  value = incus_instance.instance
}
