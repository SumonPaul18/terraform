resource "proxmox_virtual_environment_vm" "app_server" {
  # Basic Configuration
  name      = var.vm_name
  node_name = var.target_node
  vm_id     = var.vm_id
  
  # Stop VM on destroy (Optional: Set to false if you want to keep VM after terraform destroy)
  stop_on_destroy = true

  # ==========================================
  # CLONE CONFIGURATION (Most Important Part)
  # ==========================================
  clone {
    vm_id = var.template_id # This will take value from variables (e.g., 315)
  }

  # CPU Configuration
  cpu {
    cores = var.cpu_cores
    type  = "host" # Use host CPU for best performance
  }

  # Memory Configuration
  memory {
    dedicated = var.memory_mb
  }

  # Network Configuration
  network_device {
    bridge = var.bridge_name
    model  = "virtio"
  }

  # Agent Configuration (QEMU Guest Agent)
  agent {
    enabled = false # Recommended to be true for better integration
  }
  
  # Start VM after creation
  started = true
}