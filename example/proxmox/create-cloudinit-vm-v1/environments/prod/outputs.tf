output "vm_inventory" {
  description = "সকল ম্যানেজড VM-এর তথ্য"
  value = { for k, v in module.managed_vms : k => {
    id   = v.vm_id
    name = v.name
    ips  = v.ipv4_addresses
  }}
}