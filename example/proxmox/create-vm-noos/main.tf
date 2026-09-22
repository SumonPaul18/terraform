resource "proxmox_virtual_environment_vm" "app_server" {
  name      = var.vm_name
  node_name = var.target_node
  vm_id     = var.vm_id

  stop_on_destroy = true

  agent {
    enabled = false
  }

  cpu {
    cores = var.cpu_cores
    type  = "host"
  }

  memory {
    dedicated = var.memory_mb
  }

  disk {
    datastore_id = var.datastore_id
    interface    = "scsi0"
    size         = var.disk_size_gb
  }

  network_device {
    bridge = var.bridge_name
  }
}