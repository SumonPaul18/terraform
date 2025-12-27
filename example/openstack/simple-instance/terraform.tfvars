# terraform.tfvars

# VM Configuration
instance_name     = "terra-vm"
image_name        = "cirros"
flavor_name       = "m1.tiny"
network_name      = "private"
floating_ip_pool  = "public"

# SSH Key
ssh_key_name      = "sumon-key-01"
ssh_public_key_path = "~/.ssh/id_ed25519.pub"
