# provider.tf
terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.52"
    }
  }
}

provider "openstack" {
  cloud = "openstack" 
#  clouds_file_path = "/home/sumon/Downloads/clouds.yaml"
}
