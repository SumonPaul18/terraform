# variables.tf

# VM সেটিংস
variable "instance_name" {
  description = "ইনস্ট্যান্সের নাম"
  type        = string
}

variable "image_name" {
  description = "Glance ইমেজের নাম (যেমন: Ubuntu 22.04)"
  type        = string
}

variable "flavor_name" {
  description = "Flavor নাম (যেমন: m1.small)"
  type        = string
}

variable "network_name" {
  description = "Internal নেটওয়ার্কের নাম"
  type        = string
}

variable "floating_ip_pool" {
  description = "External নেটওয়ার্কের নাম (floating IP এর জন্য)"
  type        = string
  default     = "public"
}

# SSH Key
variable "ssh_key_name" {
  description = "Key Pair-এর নাম (OpenStack-এ তৈরি হবে)"
  type        = string
}

variable "ssh_public_key_path" {
  description = "আপনার লোকাল public key ফাইলের পথ"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
