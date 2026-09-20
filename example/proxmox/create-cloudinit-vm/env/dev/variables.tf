# ==========================================
# Global Provider Variables
# ==========================================
variable "pm_api_url" {
  type        = string
  description = "Proxmox VE API URL (e.g., https://192.168.68.11:8006)"
}

variable "pm_api_token_id" {
  type        = string
  sensitive   = true
  description = "Proxmox API Token ID (Format: user@realm!tokenid)"
}

variable "pm_api_token_secret" {
  type        = string
  sensitive   = true
  description = "Proxmox API Token Secret Key"
}

# ==========================================
# Common VM Variables
# ==========================================
variable "default_node" {
  type        = string
  default     = "lab4"
  description = "Target Proxmox Node Name"
}

variable "default_template_id" {
  type        = number
  default     = 315 # আপনার স্ক্রিনশট অনুযায়ী টেমপ্লেট ID 315
  description = "Source Template VM ID for cloning"
}

variable "ssh_public_key_path" {
  type        = string
  default     = "~/.ssh/id_rsa.pub"
  description = "Path to SSH Public Key file"
}

variable "vm_password" {
  type        = string
  sensitive   = true
  default     = "TempPass@123!" # ডিফল্ট পাসওয়ার্ড, tfvars-এ চেঞ্জ করতে পারবেন
  description = "Default password for VM users"
}