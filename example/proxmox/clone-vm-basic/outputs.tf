output "vm_id" {
  value       = proxmox_virtual_environment_vm.app_server.vm_id
  description = "The ID of the created VM"
}

output "vm_name" {
  value       = proxmox_virtual_environment_vm.app_server.name
  description = "The Name of the created VM"
}
# Optional: Add IP Address output for easy SSH access
output "ipv4_addresses" {
  value       = proxmox_virtual_environment_vm.app_server.ipv4_addresses
  description = "List of IPv4 addresses assigned to the VM"
  sensitive   = false
}

# Optional: Add Node Name output
output "node_name" {
  value       = proxmox_virtual_environment_vm.app_server.node_name
  description = "The Proxmox node where the VM is running"
}