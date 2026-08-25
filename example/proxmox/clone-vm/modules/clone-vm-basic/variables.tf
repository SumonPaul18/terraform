variable "vm_name" {
  type        = string
  description = "Name of the new VM"
}

variable "node_name" {
  type        = string
  description = "Proxmox Node Name"
}

variable "vm_id" {
  type        = number
  description = "VM ID"
}

variable "template_id" {
  type        = number
  description = "Source Template VM ID"
}

variable "cpu_cores" {
  type        = number
  default     = 2
  description = "Number of CPU cores"
}

variable "memory_mb" {
  type        = number
  default     = 2048
  description = "RAM in MB"
}

variable "disk_config" {
  type = list(object({
    datastore_id = string
    interface    = string
    size         = number
  }))
  default     = []
  description = "List of disk configurations"
}

variable "network_config" {
  type = list(object({
    bridge = string
    model  = string
  }))
  default     = []
  description = "List of network device configurations"
}

variable "start_vm" {
  type        = bool
  default     = true
  description = "Start VM after creation"
}