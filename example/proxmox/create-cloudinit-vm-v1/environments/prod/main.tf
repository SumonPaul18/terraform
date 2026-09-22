# proxmox-iac/env/prod/main.tf

locals {
  # YAML ফাইল থেকে সব VM ডেটা লোড করা হচ্ছে
  vms = yamldecode(file("${path.module}/vms.yaml"))["vms"]
}

module "managed_vms" {
  source = "../../modules/vm"

  # প্রতিটি VM-এর জন্য মডিউল অটোমেটিক ইনস্ট্যান্সিয়েট হবে
  for_each = { for vm in local.vms : vm.name => vm }

  vm_name         = each.value.name
  vm_id           = each.value.vm_id
  node_name       = var.default_node
  template_id     = var.template_id
  cpu_cores       = each.value.cores
  memory_mb       = each.value.memory
  disk_size_gb    = each.value.disk_size
  ip_address      = each.value.ip
  gateway         = each.value.gateway
  ssh_key_path    = trimspace(file(var.ssh_key_path))
  user_password   = coalesce(each.value.password, var.default_password)
  #prevent_destroy = each.value.prevent_destroy
}