variable "proxmox_api_url" {
  type        = string
  description = "Proxmox API Endpoint"
}

variable "proxmox_api_token_id" {
  type        = string
  description = "Proxmox API Token ID"
}

variable "proxmox_api_token_secret" {
  type        = string
  sensitive   = true
  description = "Proxmox API Token Secret"
}

variable "target_node" {
  type        = string
  description = "Target Proxmox Node Name"
}

variable "vm_id" {
  type        = number
  description = "Virtual Machine ID"
}

variable "vm_name" {
  type        = string
  description = "Virtual Machine Name"
}

variable "cpu_cores" {
  type        = number
  description = "Number of CPU Cores"
}

variable "memory_mb" {
  type        = number
  description = "RAM Allocation in MB"
}


variable "datastore_id" {
  type        = string
  description = "Target Storage Name (e.g. Ceph/Local)"
}

variable "bridge_name" {
  type        = string
  description = "Network Bridge Name"
}

# NEW VARIABLE FOR CLONING
variable "template_id" {
  type        = number
  description = "The VM ID of the source template (e.g., 315)"
}