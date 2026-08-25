# ==========================================
# Example 1: Basic Clone (No Cloud-Init)
# Uncomment this block to deploy a basic VM
# ==========================================

module "basic_vm_01" {
  source = "../../modules/clone-vm-basic"

  vm_name     = "clone-vm-tf"
  node_name   = var.default_node
  vm_id       = 463
  template_id = var.default_template_id
  
  cpu_cores   = 2
  memory_mb   = 2048

  disk_config = [
    {
      datastore_id = "main"
      interface    = "scsi0"
      size         = 20
    }
  ]

  network_config = [
    {
      bridge = "vmbr0"
      model  = "virtio"
    }
  ]
  
  start_vm = true
}


# ==========================================
# Example 2: Cloud-Init Clone (Recommended)
# Uncomment this block to deploy a Cloud-Init VM
# ==========================================
/*
module "cloudinit_vm_01" {
  source = "../../modules/clone-vm-cloudinit"

  vm_name     = "web-server-01"
  node_name   = var.default_node
  vm_id       = 102
  template_id = var.default_template_id

  cpu_cores   = 2
  memory_mb   = 4096

  disk_config = [
    {
      datastore_id = "main"
      interface    = "scsi0"
      size         = 30
    }
  ]

  network_config = [
    {
      bridge = "vmbr0"
      model  = "virtio"
    }
  ]

  # Cloud-Init Specifics
  ci_username      = "admin"
  ci_password      = var.vm_password # Defined in tfvars
  ssh_public_key   = file(var.ssh_public_key_path)
  ci_ipv4_address  = "192.168.68.150/24"
  ci_ipv4_gateway  = "192.168.68.1"
  dns_servers      = ["1.1.1.1", "8.8.8.8"]
  ci_upgrade_packages = true
  
  start_vm = true
}

*/