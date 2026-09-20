output "vm_id" {
  value = proxmox_virtual_environment_vm.cloudinit_clone.vm_id
}

output "name" {
  value       = proxmox_virtual_environment_vm.cloudinit_clone.name
  description = "The name of the VM"
}

output "ipv4_address" {
  value = proxmox_virtual_environment_vm.cloudinit_clone.ipv4_addresses
}