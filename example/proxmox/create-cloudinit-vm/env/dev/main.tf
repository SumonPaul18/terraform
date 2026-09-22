# ==========================================
# Example 1: Cloud-Init Clone (Recommended)
# Uncomment this block to deploy a Cloud-Init VM
# ==========================================

module "cloudinit_vm_01" {
  source = "../../modules/clone-vm-cloudinit"

  vm_name     = "tf-cm-vm"
  node_name   = var.default_node
  vm_id       = 100
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
  ci_username      = var.vm_user # Defined in tfvars
  ci_password      = var.vm_password # Defined in tfvars
  ssh_public_key   = trimspace(file(var.ssh_public_key_path))
  ci_ipv4_address  = "192.168.68.242/24"
  ci_ipv4_gateway  = "192.168.68.1"
  dns_servers      = ["1.1.1.1", "8.8.8.8"]
  ci_upgrade_packages = true
  
  start_vm = true
}
