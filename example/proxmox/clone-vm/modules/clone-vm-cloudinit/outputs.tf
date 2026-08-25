output "vm_id" {
  value = proxmox_virtual_environment_vm.cloudinit_clone.vm_id
}

output "ipv4_address" {
  value = proxmox_virtual_environment_vm.cloudinit_clone.ipv4_addresses
}