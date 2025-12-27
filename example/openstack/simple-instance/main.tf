# main.tf

# 1. SSH Key Pair
resource "openstack_compute_keypair_v2" "vm_key" {
  name       = "${var.instance_name}-key"
  public_key = file(var.ssh_public_key_path)
}

# 2. VM ইনস্ট্যান্স
resource "openstack_compute_instance_v2" "vm" {
  name            = var.instance_name
  image_name      = var.image_name
  flavor_name     = var.flavor_name
  key_pair        = openstack_compute_keypair_v2.vm_key.name
  security_groups = ["default"]

  network {
    name = var.network_name
  }
}

# 3. Floating IP
resource "openstack_networking_floatingip_v2" "fip" {
  pool = var.floating_ip_pool
}

# 4. Floating IP VM-এ অ্যাটাচ করুন
resource "openstack_compute_floatingip_associate_v2" "fip_assoc" {
  floating_ip = openstack_networking_floatingip_v2.fip.address
  instance_id = openstack_compute_instance_v2.vm.id
}
