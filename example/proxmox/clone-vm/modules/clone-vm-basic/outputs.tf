output "vm_id" {
  value = proxmox_virtual_environment_vm.basic_clone.vm_id
}

output "ipv4_address" {
  value = proxmox_virtual_environment_vm.basic_clone.ipv4_addresses
}