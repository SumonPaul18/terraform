# ==========================================
# Proxmox API Connection Variables
# ==========================================
variable "pm_api_url" {
  type        = string
  description = "Proxmox VE API URL"
}

variable "pm_api_token_id" {
  type        = string
  sensitive   = true
  description = "Proxmox API Token ID"
}

variable "pm_api_token_secret" {
  type        = string
  sensitive   = true
  description = "Proxmox API Token Secret"
}

# ==========================================
# Global Infrastructure Variables
# ==========================================
variable "default_node" {
  type        = string
  default     = "lab4"
  description = "Default Proxmox Node Name"
}

variable "template_id" {
  type        = number
  default     = 410
  description = "Source Template VM ID for cloning"
}

variable "ssh_key_path" {
  type        = string
  default     = "~/.ssh/id_rsa.pub"
  description = "Path to SSH Public Key"
}

variable "default_password" {
  type        = string
  sensitive   = true
  default     = "TempPass@123!"
  description = "Default password for VMs if not specified in YAML"
}