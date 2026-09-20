# 🚀 Proxmox VE Infrastructure as Code (IaC) with Terraform

![Terraform](https://img.shields.io/badge/Terraform-v1.5+-623CE4?style=for-the-badge&logo=terraform&logoColor=white)
![Proxmox](https://img.shields.io/badge/Proxmox-VE-E57000?style=for-the-badge&logo=proxmox&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A production-grade, modular, and scalable Terraform project for automating Virtual Machine provisioning on Proxmox VE. This project supports both basic cloning and advanced Cloud-Init configurations for fully automated VM deployment.

## ✨ Features

-   **Modular Architecture:** Reusable modules for Basic and Cloud-Init VMs.
-   **Cloud-Init Support:** Automated user creation, SSH key injection, static IP assignment, and package upgrades.
-   **State Stability:** Optimized to prevent unnecessary resource replacement (drift-free).
-   **Dynamic Configuration:** Flexible disk, network, and CPU/RAM sizing via variables.
-   **Secure Secrets Management:** Sensitive data handled via `tfvars` and environment variables.
-   **Multi-Node Support:** Easily target different Proxmox nodes (lab3, lab4, etc.).

## 📁 Project Structure

```text
proxmox-iac/
├── env/
│   └── dev/                # Development Environment Config
│       ├── main.tf         # Module calls & VM definitions
│       ├── providers.tf    # Proxmox Provider config
│       ├── variables.tf    # Input variables
│       └── terraform.tfvars # Actual values (Git ignored)
├── modules/
│   │   
│   └── clone-vm-cloudinit/ # Advanced Cloud-Init Module
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── .gitignore
└── README.md
```

## 🛠️ Prerequisites

Before you begin, ensure you have the following:

1.  **Terraform** (v1.5+) or OpenTofu installed.
2.  **Proxmox VE** cluster with API access.
3.  **Proxmox API Token** with sufficient permissions (PVEVMAdmin).
4.  A **Cloud-Init Ready Template** (e.g., Ubuntu 22.04/24.04) with a mounted Cloud-Init drive.
5.  **SSH Key Pair** (`~/.ssh/id_rsa.pub`) for passwordless access.

## ⚡ Quick Start Guide

### 1. Clone & Configure

Clone the repository and navigate to the dev environment:

```bash
cd env/dev
cp terraform.tfvars.example terraform.tfvars
```

Edit `terraform.tfvars` with your details:

```hcl
proxmox_api_url          = "https://192.168.23.11:8006"
proxmox_api_token_id     = "root@pam!my-token-id"
proxmox_api_token_secret = "your-secret-key"

vm_password              = "StrongPass@123!"
ssh_public_key_path      = "~/.ssh/id_ed25519.pub"

default_node             = "lab4"
default_template_id      = 306
```

### 2. Initialize & Plan

```bash
terraform init
terraform plan
```

### 3. Deploy

```bash
terraform apply
# Type 'yes' when prompted
```

### 4. Verify

Once deployed, SSH into your new VM:

```bash
ssh admin@<VM_IP_ADDRESS>
```

##  Module Usage Examples

### Basic VM (No Cloud-Init)

Useful for templates or manual setup later.

```hcl
module "basic_vm" {
  source      = "../../modules/clone-vm-basic"
  vm_name     = "test-basic"
  node_name   = "lab3"
  vm_id       = 200
  template_id = 306
  start_vm    = true
}
```

### Cloud-Init VM (Recommended)

Fully automated setup with networking and users.

```hcl
module "web_server" {
  source            = "../../modules/clone-vm-cloudinit"
  vm_name           = "web-prod-01"
  node_name         = "lab4"
  vm_id             = 101
  template_id       = 306
  cpu_cores         = 4
  memory_mb         = 8192
  
  ci_username       = "deploy"
  ci_password       = var.vm_password
  ssh_public_key    = trimspace(file(var.ssh_public_key_path))
  
  ci_ipv4_address   = "192.168.68.50/24"
  ci_ipv4_gateway   = "192.168.68.1"
  dns_servers       = ["1.1.1.1", "8.8.8.8"]
  
  start_vm          = true
}
```

##  Troubleshooting

### VM Replacement Loop (`-/+ destroy and then create`)
If Terraform wants to replace an existing VM without code changes:
1.  Run `terraform refresh` to sync state.
2.  Ensure SSH keys are passed using `trimspace(file(...))`.
3.  Check for `vga` or other immutable attribute drifts and add them to your config.

### Cloud-Init Not Applying
-   Ensure your template has a **Cloud-Init Drive** attached in Hardware tab.
-   Verify `initialization { datastore_id = "..." }` matches your storage.
-   Check Proxmox logs (`/var/log/pve/tasks/`) for cloud-init errors.

### Timeout Errors
Increase timeouts in `main.tf`:
```hcl
timeout_clone  = 1800
timeout_create = 1800
```

##  Contributing

Contributions are welcome! Please fork the repo and submit a Pull Request.

## 📜 License

MIT License - feel free to use this in your own projects.

---