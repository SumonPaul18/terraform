terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.60.0"
    }
  }
}

# Resource: Proxmox Virtual Environment VM (Cloud-Init Clone)
resource "proxmox_virtual_environment_vm" "cloudinit_clone" {
  name      = var.vm_name
  node_name = var.node_name
  vm_id     = var.vm_id

  # Clone from Template
  clone {
    vm_id = var.template_id
    full    = true 
    retries = 5  
  }

  # CPU & Memory
  cpu {
    cores = var.cpu_cores
    type  = "host"
  }

  memory {
    dedicated = var.memory_mb
  }

  # Disk Configuration
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

  vga {
    type   = "virtio"      # VirtIO-GPU এর জন্য
    memory = 16            # 16 MiB মেমোরি যথেষ্ট
  }

  # Cloud-Init Configuration
  initialization {
    datastore_id = "main" # Ensure this matches your storage where cloud-init drive
    # User Account Setup
    user_account {
      username = var.ci_username
      password = var.ci_password
      keys     = [var.ssh_public_key]
    }

    # Network Interface Configuration (IPv4)
    ip_config {
      ipv4 {
        address = var.ci_ipv4_address
        gateway = var.ci_ipv4_gateway
      }
    }


    # DNS Configuration
    dns {
      servers = var.dns_servers
    }
    
    # Upgrade packages on first boot (Optional)
    #upgrade = var.ci_upgrade_packages
  }

  started = var.start_vm

  timeout_clone  = 1800
  timeout_create = 1800
  description = "Managed by Terraform - Cloud-Init Module"
  
  # Prevent accidental deletion in production
  lifecycle {
    prevent_destroy = false # Set to true for prod safety
  }
}