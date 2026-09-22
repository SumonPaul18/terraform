variable "vm_name" { type = string }
variable "node_name" { type = string }
variable "vm_id" { type = number }
variable "template_id" { type = number }
variable "cpu_cores" { type = number, default = 2 }
variable "memory_mb" { type = number, default = 2048 }

variable "disk_config" {
  type = list(object({
    datastore_id = string
    interface    = string
    size         = number
  }))
  default = []
}

variable "network_config" {
  type = list(object({
    bridge = string
    model  = string
  }))
  default = []
}

# Cloud-Init Specific Variables
variable "ci_username" {
  type        = string
  default     = "ubuntu"
  description = "Default OS username"
}

variable "ci_password" {
  type        = string
  sensitive   = true
  description = "Password for the default user"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH Public Key content"
}

variable "ci_ipv4_address" {
  type        = string
  description = "Static IP address with CIDR (e.g., 192.168.1.100/24)"
}

variable "ci_ipv4_gateway" {
  type        = string
  description = "Gateway IP address"
}

variable "dns_servers" {
  type        = list(string)
  default     = ["1.1.1.1", "8.8.8.8"]
  description = "List of DNS server IPs"
}

variable "ci_upgrade_packages" {
  type        = bool
  default     = false
  description = "Upgrade OS packages on first boot"
}

variable "start_vm" {
  type    = bool
  default = true
}