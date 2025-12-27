# outputs.tf

output "instance_name" {
  value = openstack_compute_instance_v2.vm.name
}

output "floating_ip" {
  value = openstack_networking_floatingip_v2.fip.address
}

output "ssh_command" {
  value = "ssh -i ${var.ssh_public_key_path} ubuntu@${openstack_networking_floatingip_v2.fip.address}"
}
