variable "vm_name"      { type = string }
variable "vm_id"        { type = number }
variable "node_name"    { type = string }
variable "template_id"  { type = number }
variable "cpu_cores"    { type = number }
variable "memory_mb"    { type = number }
variable "disk_size_gb" { type = number }
variable "ip_address"   { type = string }
variable "gateway"      { type = string }
variable "ssh_key_path" { type = string }

variable "user_password" {
  type      = string
  sensitive = true
}