terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.60.0"
    }
  }
}

resource "proxmox_virtual_environment_vm" "this" {
  name      = var.vm_name
  node_name = var.node_name
  vm_id     = var.vm_id

  clone {
    vm_id = var.template_id
  }

  cpu {
    cores = var.cpu_cores
    type  = "host"
  }

  memory {
    dedicated = var.memory_mb
  }

    vga {
    type   = "virtio"      # VirtIO-GPU এর জন্য
    memory = 16            # 16 MiB মেমোরি যথেষ্ট
  }

  disk {
    datastore_id = "main"
    interface    = "scsi0"
    size         = var.disk_size_gb
  }

  network_device {
    bridge = "vmbr0"
    model  = "virtio"
  }

  # Correct Initialization Block for bpg/proxmox v0.60+
  initialization {
    datastore_id = "main" # Ensure this matches your storage where cloud-init drive
    user_account {
      username = "ubuntu"
      password = var.user_password
      keys     = [var.ssh_key_path]
    }
    
    # IP Configuration inside a sub-block
    ip_config {
      ipv4 {
        address = var.ip_address
        gateway = var.gateway
      }
    }
    
    dns {
      servers = ["1.1.1.1", "8.8.8.8"]
    }
  }

  agent {
    enabled = false
  }

  started = true
}