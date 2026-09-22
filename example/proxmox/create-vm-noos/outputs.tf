output "vm_id" {
  value       = proxmox_virtual_environment_vm.app_server.vm_id
  description = "The ID of the created VM"
}

output "vm_name" {
  value       = proxmox_virtual_environment_vm.app_server.name
  description = "The Name of the created VM"
}