# এই ব্লকটি মডিউলের ভেতরে থাকতে হবে
terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.60.0"
    }
  }
}

# Resource: Proxmox Virtual Environment VM (Basic Clone)
resource "proxmox_virtual_environment_vm" "basic_clone" {
  # Name of the new VM
  name      = var.vm_name
  
  # Target Proxmox Node Name
  node_name = var.node_name
  
  # Unique VM ID
  vm_id     = var.vm_id

  # Source Template ID to clone from
  clone {
    vm_id = var.template_id
  }

  # CPU Configuration
  cpu {
    cores = var.cpu_cores
    type  = "host" # Use host CPU type for best performance
  }

  # Memory Configuration (in MB)
  memory {
    dedicated = var.memory_mb
  }

  # Disk Configuration
  # Note: In basic clone, disk settings are inherited from template unless overridden
  dynamic "disk" {
    for_each = var.disk_config
    content {
      datastore_id = disk.value.datastore_id
      interface    = disk.value.interface
      size         = disk.value.size
    }
  }

  # Network Configuration
  dynamic "network_device" {
    for_each = var.network_config
    content {
      bridge = network_device.value.bridge
      model  = network_device.value.model
    }
  }

  # Start VM after creation
  started = var.start_vm

  # Description
  description = "Managed by Terraform - Basic Clone Module"
}