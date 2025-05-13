# Terraform

---

## 📘 **Terraform – পর্ব ১: ভূমিকা ও বেসিক ধারণা**

### 🧠 Terraform কী?

**Terraform** হলো একটি ওপেন-সোর্স **Infrastructure as Code (IaC)** টুল, যা তৈরি করেছে ```HashiCorp```। এর মাধ্যমে আপনি কোড দিয়ে সার্ভার, নেটওয়ার্ক, ডেটাবেইস, ক্লাউড রিসোর্স ইত্যাদি তৈরি, কনফিগার এবং ম্যানেজ করতে পারেন।

🟢 উদাহরণ:
- AWS-এ EC2 instance চালু করা
- GCP-তে VM তৈরি করা
- Azure-এ একটি Database তৈরি করা
- একটি Load Balancer + Auto Scaling Group তৈরি করা

---

### 🏗️ **Infrastructure as Code (IaC) কী?**

IaC হলো এমন একটি পদ্ধতি যেখানে আপনি আপনার ইনফ্রাস্ট্রাকচার (যেমন: VM, ডেটাবেইস, নেটওয়ার্ক) ম্যানুয়ালি না করে **কোডে লিখে** তৈরি করেন।

➡️ যেমন: আগের দিনে আমরা AWS Console-এ গিয়ে ক্লিক করে Instance চালু করতাম। এখন Terraform দিয়ে আমরা `main.tf` নামে একটি ফাইলে লিখেই সেটি চালু করতে পারি।

```hcl
resource "aws_instance" "my_server" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}
```

---

### ✅ Terraform কেন ব্যবহার করবেন?

| সুবিধা | ব্যাখ্যা |
|--------|---------|
| 🔁 রিপ্রোডিউসেবল | বার বার একি কোড ব্যবহার করে একি ইনফ্রা তৈরি করা যায় | 
| 🔄 ভার্সন কন্ট্রোল | Git দিয়ে ইনফ্রা পরিবর্তনের হিসাব রাখা যায় |
| 🔍 পরিকল্পনা ও যাচাই | Terraform `plan` দিয়ে আগে দেখে নেওয়া যায় কী পরিবর্তন হবে |
| 🌐 মাল্টি-ক্লাউড সাপোর্ট | AWS, Azure, GCP—সব জায়গায় কাজ করে |

---

### 📦 Terraform কী কী রিসোর্স ম্যানেজ করতে পারে?

Terraform হাজারের বেশি Provider সাপোর্ট করে:
- ☁️ AWS, Azure, GCP
- 🐳 Docker
- ☁️ DigitalOcean
- 🧱 Kubernetes
- 🔐 Vault
- 📡 Cloudflare
- ... আরও অনেক কিছু!

---

### 🛠️ Terraform Workflow

Terraform কাজ করে ৪টি ধাপে:

| ধাপ | কী করে? |
|------|--------|
| 1️⃣ `terraform init` | Provider & প্লাগইন ডাউনলোড করে |
| 2️⃣ `terraform plan` | কী পরিবর্তন হবে তা দেখায় |
| 3️⃣ `terraform apply` | বাস্তবে রিসোর্স তৈরি করে |
| 4️⃣ `terraform destroy` | সব রিসোর্স ডিলিট করে |

---

### 📁 Terraform ফাইল গুলো কেমন হয়?

- `.tf` = Terraform কনফিগারেশন ফাইল
- `.tfvars` = Variables-এর ভ্যালু
- `terraform.tfstate` = ইনফ্রার বর্তমান অবস্থা সংরক্ষণ করে

---

### 🔚 প্রথম পর্বের সারসংক্ষেপ:

- Terraform হলো কোড দিয়ে ইনফ্রাস্ট্রাকচার ম্যানেজ করার টুল
- এটি IaC ফলো করে এবং অনেক provider সাপোর্ট করে
- এটা দিয়ে আপনি ক্লাউড রিসোর্স অটোমেশন করতে পারেন
- Terraform কোডগুলো `.tf` ফাইলে লেখা হয়

---

## 🔧 **পর্ব ২: Terraform ইনস্টলেশন ও সেটআপ**

---

### 🖥️ **Linux এ Terraform ইনস্টলেশন**

#### ধাপ ১: Terraform ইনস্টল করার জন্য prerequisites
- আপনার কাছে একটি **Linux মেশিন** থাকতে হবে।
- **sudo** বা root privilege থাকতে হবে।

#### ধাপ ২: Terraform এর অফিসিয়াল প্যাকেজ ডাউনলোড করা
1. প্রথমে Terraform এর সর্বশেষ ভার্সন ডাউনলোড করতে হবে। এ জন্য `wget` বা `curl` ব্যবহার করা যেতে পারে। 

```bash
# ১. HashiCorp-এর রিপোজিটরি ডাউনলোড করার জন্য commands:
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

# ২. Terraform GPG key যোগ করুন
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# ৩. Terraform-এর রিপোজিটরি যোগ করুন
sudo apt-add-repository \
    "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# ৪. Terraform ইনস্টল করুন
sudo apt-get update && sudo apt-get install terraform
```

#### ধাপ ৩: Terraform ইনস্টলেশন চেক করা
Terraform সফলভাবে ইনস্টল হয়েছে কিনা, চেক করতে নিচের কমান্ডটি রান করুন:

```bash
terraform -v
```

এটি Terraform এর ইনস্টল হওয়া ভার্সন দেখাবে, যেমন:  
`Terraform v1.4.6`

---

### 🛠️ **Terraform এর প্রাথমিক ব্যবহার**

#### ১. **প্রথম Terraform কনফিগারেশন ফাইল তৈরি করা**

ধরা যাক আমরা AWS EC2 instance তৈরি করতে চাই। এজন্য আমাদের একটি `main.tf` ফাইল তৈরি করতে হবে:

1. একটি নতুন ডিরেক্টরি তৈরি করুন:

```bash
mkdir terraform-demo
cd terraform-demo
```

2. একটি `main.tf` ফাইল তৈরি করুন:

```bash
touch main.tf
```

3. `main.tf` ফাইলের মধ্যে কোড লিখুন:

```hcl
# AWS Provider কনফিগারেশন
provider "aws" {
  region = "us-east-1"  # আপনার সঠিক AWS region দিন
}

# EC2 instance তৈরি করা
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # সঠিক AMI ID দিন
  instance_type = "t2.micro"               # আপনার প্রয়োজন অনুযায়ী
}
```

#### ২. **Terraform কনফিগারেশন প্রয়োগ করা**

কনফিগারেশন ফাইল লিখে নেওয়ার পর Terraform এর ৪টি মূল কমান্ড ব্যবহার করতে হবে:

1. **`terraform init`** – এটা Terraform প্রজেক্ট শুরু করতে সাহায্য করে এবং প্রয়োজনীয় প্লাগইন ডাউনলোড করে।

```bash
terraform init
```

2. **`terraform plan`** – এটি আপনার কোডে কি পরিবর্তন হবে তা দেখাবে, যেমন নতুন EC2 instance তৈরি হবে।

```bash
terraform plan
```

এটি চললে আপনি কিছু এরর বা সম্ভাব্য পরিবর্তন দেখতে পারবেন। 

3. **`terraform apply`** – প্রকৃতপক্ষে Terraform কোড প্রয়োগ করবে এবং ইনফ্রাস্ট্রাকচার তৈরি করবে।

```bash
terraform apply
```

এটি সফলভাবে চালানোর পরে, Terraform আপনাকে কোড অনুযায়ী রিসোর্স তৈরি করবে। যদি আপনি পণ্যের প্রম্পট (confirmation) দেখতে চান, তা নিশ্চিত করতে `yes` টাইপ করুন।

4. **`terraform destroy`** – যেকোনো রিসোর্স মুছে ফেলতে, `terraform destroy` ব্যবহার করুন। এটি আপনার ইনফ্রাস্ট্রাকচার ডিলিট করবে।

```bash
terraform destroy
```

---

### ⚙️ **Terraform প্রাথমিক কনফিগারেশন ব্যাখ্যা**

- **provider "aws"**: এটা Terraform কে বলে যে AWS ক্লাউড ব্যবহার করতে হবে। এখানে আমরা `us-east-1` AWS region ব্যবহার করছি।
- **resource "aws_instance" "example"**: এটা একটি EC2 instance তৈরি করার রিসোর্স, যেখানে:
  - `ami`: এটির মাধ্যমে আপনি যে AMI ID (Amazon Machine Image) ব্যবহার করবেন তা উল্লেখ করেন। 
  - `instance_type`: এখানে আপনি যে EC2 instance type ব্যবহার করবেন, সেটা উল্লেখ করবেন।

---

### 📚 **Terraform ব্যবহার সংক্রান্ত কিছু মূল ধারণা**

- **Resources**: আপনার ইনফ্রাস্ট্রাকচার তৈরি বা পরিচালনা করার জন্য Terraform 'resource' ব্যবহার করে। যেমন `aws_instance`, `aws_security_group`, `aws_s3_bucket` ইত্যাদি।
  
- **Providers**: Terraform ক্লাউড বা সার্ভিস প্রোভাইডারদের সাথে ইন্টারঅ্যাক্ট করতে প্রোভাইডার ব্যবহার করে। AWS, Azure, GCP ইত্যাদি।

- **Variables**: ভ্যারিয়েবল ব্যবহার করে কনফিগারেশনগুলোকে আরও ডাইনামিক ও পুনরায় ব্যবহারযোগ্য করা যায়। উদাহরণ:

```hcl
variable "instance_type" {
  type = string
  default = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
}
```

- **Outputs**: Terraform `outputs` ব্যবহার করে ইনফ্রাস্ট্রাকচার থেকে তথ্য বের করে। উদাহরণ:

```hcl
output "instance_ip" {
  value = aws_instance.example.public_ip
}
```
---

## 📦 Terraform পর্ব ৩: ফাইল ও সিনট্যাক্স

---

## ১. 📄 `.tf` ও `.tfvars` ফাইল

### ➡️ `.tf` ফাইল
- `.tf` ফাইল হলো **Terraform কনফিগারেশন ফাইল**।
- এতে **providers, resources, variables, outputs** ইত্যাদি লেখা হয়।
- উদাহরণ:

**`main.tf`**
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
```

---

### ➡️ `.tfvars` ফাইল
- `.tfvars` ফাইল দিয়ে আমরা **variables** এর মান (value) আলাদাভাবে সংরক্ষণ করি।
- এতে variables-এর value define করা হয়।
- উদাহরণ:

**`terraform.tfvars`**
```hcl
ami_id = "ami-0c55b159cbfafe1f0"
instance_type = "t2.micro"
```

---
### ➡️ ব্যবহার কিভাবে হয়?

1. `main.tf` ফাইলে Variable define করা থাকে।
2. `terraform.tfvars` থেকে সেই Variable এর মান নেয়া হয়।

#### Variable Define করার নিয়ম:
**`variables.tf`**
```hcl
variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}
```

---
> 🛑 মনে রাখবে: `.tf` ফাইলে configuration থাকে, `.tfvars` ফাইলে values থাকে।

---

## ২. ☁️ Providers (AWS, Azure, GCP ইত্যাদি)

### ➡️ Provider কি?
Terraform কে বলে দেয় **কোন প্ল্যাটফর্মে কাজ করতে হবে**।

### ➡️ সাধারণ Provider configuration:

**AWS Provider**
```hcl
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
```

**Azure Provider**
```hcl
provider "azurerm" {
  features {}
}
```

**GCP Provider**
```hcl
provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}
```

---
> 🌟 সব provider এর জন্য `terraform init` দিয়ে provider plugin ডাউনলোড হয়।

---

## ৩. 🛠️ Resources, Variables, Outputs

### ➡️ Resource

**Resource** মানে হল এমন জিনিস যা Terraform তোমার জন্য তৈরি করবে।

উদাহরণ:
- EC2 Instance
- S3 Bucket
- VPC
- Kubernetes Cluster

**Resource Syntax:**
```hcl
resource "<PROVIDER>_<TYPE>" "<NAME>" {
  configuration_arguments
}
```

**উদাহরণ:**
```hcl
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private"
}
```

---

### ➡️ Variable

**Variable** ব্যবহার করি যাতে কোডে হার্ডকোড না করি।  

**variable define (variables.tf):**
```hcl
variable "bucket_name" {
  type = string
  description = "The name of the S3 bucket"
}
```

**variable ব্যবহার (main.tf):**
```hcl
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}
```

**variable মান দেয়া (terraform.tfvars):**
```hcl
bucket_name = "my-bucket-2025"
```

---

### ➡️ Output

**Output** মানে ইনফ্রাস্ট্রাকচারের কোনও information বাইরে দেখানো। যেমন instance IP, bucket URL ইত্যাদি।

**Output লেখা:**
```hcl
output "bucket_name_output" {
  value = aws_s3_bucket.example.bucket
}
```

এখন `terraform apply` এর পরে এই output screen এ দেখাবে।

---

## ৪. 📦 Terraform State (Local & Remote)

### ➡️ Terraform State কী?

Terraform যখন কোনো রিসোর্স তৈরি করে, তখন সে একটা **state file** রাখে, যাতে সে জানে কোন রিসোর্স আগে তৈরি হয়েছিল।

**State File** = `terraform.tfstate`

---

### ➡️ Local State

- ডিফল্টভাবে, আপনার মেশিনে **local** state file (`terraform.tfstate`) তৈরি হয়।
- সমস্যা: যদি টিমের মধ্যে কাজ করেন, তাহলে সবার কাছে আলাদা আলাদা state হয়ে যাবে।

---

### ➡️ Remote State

- বড় প্রজেক্টে আমরা **remote backend** ব্যবহার করি যেন সব লোকের জন্য একটা সেন্ট্রালাইজড state থাকে।
- উদাহরণ: S3 bucket + DynamoDB, Terraform Cloud, Azure Storage, ইত্যাদি।

**S3 Bucket দিয়ে Remote State Example:**
```hcl
terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
```

---

### ➡️ Terraform Format & Validate
- `terraform fmt` = কোড ফরম্যাট ঠিক করা।
- `terraform validate` = কোড সিনট্যাক্স চেক করা।

---

### ➡️ Terraform Workspace
- একই কোড দিয়ে আলাদা environment (dev, prod) তৈরি করার জন্য।

```bash
terraform workspace new dev
terraform workspace new prod
```

---

### ➡️ Terraform Module
- কোড রিইউজ করার জন্য module ব্যবহার করা হয়। 
- বড় বড় প্রজেক্টে module ছাড়া ম্যানেজ করা কঠিন হয়।

উদাহরণ:
```hcl
module "vpc" {
  source = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
}
```

---

# 🎯 সংক্ষেপে Flow:

1. **main.tf** ➔ মূল configuration
2. **variables.tf** ➔ variables define
3. **terraform.tfvars** ➔ variables এর মান
4. **outputs.tf** ➔ important information output
5. **terraform init** ➔ plugin initialize
6. **terraform plan** ➔ দেখুন কি হবে
7. **terraform apply** ➔ ইনফ্রা তৈরি
8. **terraform destroy** ➔ সব কিছু মুছে ফেলুন
9. **terraform state** ➔ ইনফ্রা ম্যানেজ করার রেফারেন্স

---

# 🔥 **Quick Practical Example: Full Minimal Project Structure**

```bash
terraform-demo/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
```

### 👉 `main.tf`
```hcl
provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
}
```

### 👉 `variables.tf`
```hcl
variable "region" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}
```

### 👉 `terraform.tfvars`
```hcl
region         = "us-east-1"
ami_id         = "ami-0c55b159cbfafe1f0"
instance_type  = "t2.micro"
```

### 👉 `outputs.tf`
```hcl
output "instance_id" {
  value = aws_instance.web.id
}
```
---

## 📦 Terraform পর্ব ৪: Advanced Topics (Modules, Remote State Backend, State Locking)

---

## 📖 Terraform পর্ব ৪ এ আমরা শিখবো:

1. Terraform Modules (কী, কেন, কিভাবে কাজ করে)
2. Remote State Backend (AWS S3 দিয়ে)
3. State Locking (DynamoDB দিয়ে)
4. কিছু গুরুত্বপূর্ণ Terraform Command (refresh, taint, import)

---

## ১. 📦 Terraform Modules: কোড রিইউজ করার জন্য

### ➡️ Module কি?

- **Module** হলো Terraform কোডের একটা প্যাকেজ বা ব্লক যেটা বারবার রিইউজ করা যায়।
- Module ব্যবহার করলে প্রজেক্ট clean ও maintainable হয়।

---

### ➡️ সাধারণ Module Example

**Project Structure:**

```bash
terraform-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
```

---

### ➡️ Module এর ভিতরে কোড:

**modules/ec2/main.tf**
```hcl
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
}
```

**modules/ec2/variables.tf**
```hcl
variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}
```

**modules/ec2/outputs.tf**
```hcl
output "instance_id" {
  value = aws_instance.this.id
}
```

---

### ➡️ Module ব্যবহার করা:

**main.tf**
```hcl
provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
}
```

**variables.tf**
```hcl
variable "region" {}
variable "ami_id" {}
variable "instance_type" {}
```

**terraform.tfvars**
```hcl
region         = "us-east-1"
ami_id         = "ami-0c55b159cbfafe1f0"
instance_type  = "t2.micro"
```

---

### 📢 মূল কথা:
> Module হচ্ছে একটা প্যাকেট — একবার বানিয়ে, বারবার ব্যাবহার! 🛠️

---

## ২. ☁️ Remote State Backend (AWS S3 দিয়ে)

### ➡️ Remote State কি?

- **Remote State** মানে State File (`terraform.tfstate`) লোকাল মেশিনের বদলে AWS S3 বা অন্য জায়গায় রাখা।
- টিম কাজের সময় অনেক safe হয়।

---

### ➡️ S3 তে Terraform State রাখার ধাপ:

#### ১. S3 Bucket তৈরি করো
```bash
aws s3api create-bucket --bucket my-terraform-state-bucket --region us-east-1
```

#### ২. Terraform Backend Configuration করো

**backend.tf**
```hcl
terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
```

> ✅ এখন `terraform init` দিলে state file S3 তে store হবে।

---

### ➡️ ব্যাখ্যা:

| Key | মানে |
|:---|:---|
| `bucket` | তোমার S3 bucket নাম |
| `key` | S3 bucket এর ভেতরে কোন path এ state রাখবে |
| `region` | S3 bucket কোন region এ আছে |

---

## ৩. 🔒 State Locking (DynamoDB দিয়ে)

### ➡️ State Locking কি?

- যখন টিমে একাধিক লোক একসাথে terraform apply চালায়, তখন **State Locking** দরকার।
- **DynamoDB Table** দিয়ে Lock রাখা যায় যাতে একসাথে দুইজন apply করতে না পারে।

---

### ➡️ DynamoDB Table তৈরি করো

```bash
aws dynamodb create-table \
    --table-name terraform-lock-table \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --billing-mode PAY_PER_REQUEST
```

---

### ➡️ Backend Configuration এ Locking Enable করো

**backend.tf**
```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
```

---

### ➡️ ব্যাখ্যা:

| Key | মানে |
|:---|:---|
| `dynamodb_table` | Lock Management এর জন্য DynamoDB টেবিল |
| `encrypt` | State ফাইল encrypt করা হবে |

---

# 📚 অতিরিক্ত গুরুত্বপূর্ণ Terraform Command

### ১. `terraform refresh`
- বাস্তবে রিসোর্স পরিবর্তন হলে, state আপডেট করে।

```bash
terraform refresh
```

---

### ২. `terraform taint`
- কোন রিসোর্সকে আবার তৈরি করার জন্য "taint" করে।

```bash
terraform taint aws_instance.example
terraform apply
```

---

### ৩. `terraform import`
- বাইরের রিসোর্স Terraform এ ইমপোর্ট করা যায়।

```bash
terraform import aws_instance.example i-0ab1cd23efgh45678
```

---

# 🎯 Summary:

| বিষয় | ব্যাখ্যা |
|:---|:---|
| Module | কোড রিইউজ করার সিস্টেম |
| Remote State | State File AWS S3 বা অন্য remote জায়গায় রাখা |
| State Locking | DynamoDB দিয়ে Multiple Apply থেকে বাঁচানো |
| Extra Commands | refresh, taint, import ইত্যাদি কাজে লাগে |

---

## 📦 Terraform পর্ব ৪: Terraform দিয়ে AWS Infrastructure তৈরি

---

# 🎯 প্রোজেক্টের টার্গেট (Objective):

✅ AWS Provider সেটআপ  
✅ VPC তৈরি  
✅ Subnet তৈরি  
✅ Security Group তৈরি  
✅ Key Pair তৈরি  
✅ EC2 Instance লঞ্চ  
✅ Output এবং Variables ব্যবহার

---

# 🛠️ প্রজেক্ট স্ট্রাকচার:

```bash
terraform-aws-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── provider.tf
```

---

# ১. ☁️ AWS Provider Configuration (provider.tf)

**`provider.tf`**
```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.7.0"
}

provider "aws" {
  region = var.aws_region
  profile = "default" # তোমার local AWS CLI profile যদি থাকে
}
```
> 📚 **ব্যাখ্যা**: এখানে আমরা বলেছি AWS provider লাগবে এবং AWS CLI এর `default` profile ব্যবহার করবো।

---

# ২. 🌐 VPC তৈরি করা (main.tf)

**`main.tf`**
```hcl
resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "Main-VPC"
  }
}
```
> 📚 **ব্যাখ্যা**: এটা একটা নতুন VPC তৈরি করছে যার IP রেঞ্জ হচ্ছে `var.vpc_cidr` থেকে আসবে।

---

# ৩. 🏠 Subnet তৈরি করা (main.tf)

```hcl
resource "aws_subnet" "main_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone

  tags = {
    Name = "Main-Subnet"
  }
}
```
> 📚 **ব্যাখ্যা**: এই subnet টি আমাদের তৈরি করা VPC-র মধ্যে তৈরি হবে।

---

# ৪. 🔒 Security Group তৈরি করা (main.tf)

```hcl
resource "aws_security_group" "instance_sg" {
  name        = "instance-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = aws_vpc.main_vpc.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Instance-SG"
  }
}
```
> 📚 **ব্যাখ্যা**: এখানে আমরা **SSH (22 port)** এবং **HTTP (80 port)** access ALLOW করেছি। সব Outbound traffic ALLOW করেছি।

---

# ৫. 🔑 Key Pair তৈরি করা (main.tf)

```hcl
resource "aws_key_pair" "deployer_key" {
  key_name   = "deployer-key"
  public_key = file(var.public_key_path)
}
```
> 📚 **ব্যাখ্যা**: এখানে তোমার Public Key ফাইল থেকে key pair তৈরি হবে। (eg: `~/.ssh/id_rsa.pub`)

---

# ৬. 🖥️ EC2 Instance Launch করা (main.tf)

```hcl
resource "aws_instance" "web_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.main_subnet.id
  vpc_security_group_ids      = [aws_security_group.instance_sg.id]
  key_name                    = aws_key_pair.deployer_key.key_name
  associate_public_ip_address = true

  tags = {
    Name = "Web-Instance"
  }
}
```
> 📚 **ব্যাখ্যা**: আমরা আমাদের তৈরি করা VPC/Subnet/Security Group/Key Pair সব ব্যবহার করে একটি EC2 তৈরি করছি।

---

# ৭. 📝 Variables ডিফাইন করা (variables.tf)

**`variables.tf`**
```hcl
variable "aws_region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "public_key_path" {
  type = string
}
```

---

# ৮. 📋 terraform.tfvars

**`terraform.tfvars`**
```hcl
aws_region        = "us-east-1"
vpc_cidr          = "10.0.0.0/16"
subnet_cidr       = "10.0.1.0/24"
availability_zone = "us-east-1a"
ami_id            = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
instance_type     = "t2.micro"
public_key_path   = "~/.ssh/id_rsa.pub"
```
> 📚 **ব্যাখ্যা**: এখানে আমরা সব variables এর ভ্যালু এক জায়গায় দিয়েছি।

---

# ৯. 🎯 Outputs তৈরি করা (outputs.tf)

**`outputs.tf`**
```hcl
output "instance_public_ip" {
  description = "Public IP of the web server"
  value       = aws_instance.web_instance.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web_instance.id
}
```
> 📚 **ব্যাখ্যা**: Terraform Apply করার পর তোমার EC2 instance এর IP আর ID স্ক্রিনে দেখাবে।

---

# 🚀 ফুল Workflow (ধাপ-ধাপ কমান্ড)

```bash
# 1. ডিরেক্টরিতে যান
cd terraform-aws-project/

# 2. Provider প্লাগিন এবং dependency initialize করুন
terraform init

# 3. ইনফ্রাস্ট্রাকচার কি তৈরি হবে তার প্ল্যান দেখুন
terraform plan

# 4. ইনফ্রাস্ট্রাকচার বাস্তবায়ন করুন
terraform apply

# 5. চাইলে পরে সব কিছু ডিলিট করতে পারবেন
terraform destroy
```

---

# 🔥 Tips:

| Command | Description |
|:--------|:------------|
| `terraform init` | Terraform প্লাগিন/ডিপেন্ডেন্সি ইনস্টল করে |
| `terraform plan` | Apply করলে কি হবে তা দেখায় |
| `terraform apply` | বাস্তবে ইনফ্রা তৈরি করে |
| `terraform destroy` | তৈরি করা সব কিছু মুছে ফেলে |

---

# 🧠 এখন তুমি যা শিখলে:

✅ AWS provider কনফিগারেশন  
✅ VPC, Subnet, Security Group, Key Pair তৈরি  
✅ EC2 instance launch  
✅ Variables এবং Outputs ব্যবহার  
✅ Terraform Workflow প্র্যাকটিস

---

# 📦 Terraform পর্ব ৫: মডিউল, কন্ডিশন, লুপ

---

# ১. 📚 Terraform Modules: কী ও কেন?

### 🔵 Terraform Module কী?
Terraform-এ **Module** হলো —  
**একগুচ্ছ `.tf` ফাইল**, যেখানে **Resources, Variables, Outputs** একসাথে থাকে এবং যেটা আমরা বারবার ব্যবহার করতে পারি।

**সহজ ভাষায় বললে:**  
> **Module = ছোট ছোট Terraform প্রোজেক্ট** → অন্য প্রোজেক্টে Import করে ইউজ করা যায় ✅

---

### 🔵 Module কেন ব্যবহার করবো?
| সুবিধা | ব্যাখ্যা |
|:------|:---------|
| 🔁 Reusability | বারবার লিখতে হবে না, একবার লিখে বারবার ব্যবহার |
| 🧹 Organization | কোড ক্লিন এবং ম্যানেজ করা সহজ |
| 🚀 Scalability | বড় ইনফ্রার জন্য অটোমেটেড স্কেল করা সহজ |
| 🔒 Best Practices | সঠিক স্ট্যান্ডার্ডে Infrastructure লেখা যায় |

---

# ২. 🛠️ কিভাবে Reusable Module তৈরি করবেন?

### 📂 ফাইল স্ট্রাকচার:

```bash
terraform-aws-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── provider.tf
└── modules/
    └── ec2_instance/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

### 📦 Example Module: (modules/ec2_instance/main.tf)

```hcl
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  key_name      = var.key_name
  tags = {
    Name = var.instance_name
  }
}
```

**modules/ec2_instance/variables.tf**
```hcl
variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_ids" { type = list(string) }
variable "key_name" {}
variable "instance_name" {}
```

**modules/ec2_instance/outputs.tf**
```hcl
output "instance_id" {
  value = aws_instance.this.id
}
```

---

### 📦 Main Project থেকে Module Call করা (main.tf)

```hcl
module "web_server" {
  source = "./modules/ec2_instance"

  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = aws_subnet.main_subnet.id
  security_group_ids = [aws_security_group.instance_sg.id]
  key_name           = aws_key_pair.deployer_key.key_name
  instance_name      = "Web-Server"
}
```
> 🎯 **ব্যাখ্যা:** এখন যখনই Module কল করবো, নতুন EC2 ইনস্ট্যান্স তৈরি হবে।

---

# ৩. 🔁 Terraform Looping (count, for_each)

### 🧩 `count` ব্যবহার করে Multiple Resource তৈরি

**main.tf**
```hcl
resource "aws_instance" "web" {
  count         = 3
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  key_name      = aws_key_pair.deployer_key.key_name

  tags = {
    Name = "Web-Server-${count.index}"
  }
}
```
> 📚 **count.index** => 0, 1, 2 হবে।

---

### 🧩 `for_each` ব্যবহার করে Map/Set থেকে Resource তৈরি

**main.tf**
```hcl
variable "server_names" {
  type    = set(string)
  default = ["web-1", "web-2", "web-3"]
}

resource "aws_instance" "web" {
  for_each      = var.server_names
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  key_name      = aws_key_pair.deployer_key.key_name

  tags = {
    Name = each.value
  }
}
```
> 📚 **each.value** => "web-1", "web-2", "web-3" নামে ইনস্ট্যান্স তৈরি হবে।

---

# ৪. ❓ Terraform Conditional Logic (if, for, ternary)

### 🧩 Ternary Operator `condition ? true_value : false_value`

**main.tf**
```hcl
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  key_name      = var.enable_key ? aws_key_pair.deployer_key.key_name : null

  tags = {
    Name = "Web-Instance"
  }
}
```
**variables.tf**
```hcl
variable "enable_key" {
  type    = bool
  default = true
}
```
> 📚 যদি `enable_key = true` হয় তবে Key ইউজ হবে, না হলে হবে না।

---

### 🧩 for লুপ ভেতরেই Data ম্যানিপুলেট করা

```hcl
locals {
  server_tags = [for s in var.server_names : upper(s)]
}
```
> 📚 এখানে Server Names গুলো **Uppercase** করা হচ্ছে।

---

# 📦 Terraform পর্ব ৬: Terraform State & Backend

---

# ১. 🔵 Terraform State কী?

> **Terraform State** হলো একটা ফাইল (default: `terraform.tfstate`) যেখানে তোমার তৈরি করা রিসোর্সগুলোর বর্তমান অবস্থা/ডাটা স্টোর হয়।

**সহজ ভাষায়:**
- যখন তুমি `terraform apply` দাও, তখন Terraform **কি কি রিসোর্স তৈরি করেছে**, **কোন ভ্যারিয়েবল ইউজ করেছে** — সবকিছু **tfstate** ফাইলে সেভ হয়।
- Terraform পরে এই **state file** দেখে বুঝে **কি নতুন তৈরি করতে হবে**, **কি মুছতে হবে**, **কি আপডেট করতে হবে**।

✅ **State ফাইল ছাড়া Terraform কাজ করতে পারে না।**

---

# ২. 🛠️ Local State vs Remote State

| বিষয় | Local State | Remote State |
|:-----|:------------|:-------------|
| 📂 Location | তোমার নিজের মেশিনে | Remote Cloud Storage (S3, GCS, etc.) |
| 👥 Collaboration | একা কাজের জন্য ভালো | টিমে একসাথে কাজের জন্য দরকার |
| 🔐 Risk | হারিয়ে যেতে পারে, করাপ্ট হতে পারে | Safe, Backup-সহ |
| 🔒 Locking | নেই | থাকে (DynamoDB Lock) |
| 🔁 Versioning | নিজে করতে হয় | ক্লাউডে অটো versioning হয় |

---

# ৩. 🛠️ Backend with S3 + DynamoDB (Locking ও Versioning)

### 🔵 Remote Backend কি?

Remote Backend মানে —  
> Terraform এর State File ম্যানেজ করা Cloud Storage এ। যেমন: **AWS S3**।

**সাথে DynamoDB দিয়ে Lock করলে:**  
- একাধিক ইউজার একসাথে একই স্টেট আপডেট করতে পারবে না।
- Data corruption থেকে বাঁচা যাবে ✅

---

## 📋 Step-by-Step: S3 + DynamoDB Backend Setup

### Step 1️⃣: S3 Bucket তৈরি করা (State রাখার জন্য)

```hcl
resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-state-bucket"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}
```

**ব্যাখ্যা:**  
- Versioning অন আছে (Backup থাকবে) ✅
- Encryption অন আছে (Data secure থাকবে) 🔒
- Destroy প্রিভেন্ট আছে (ভুলে মুছে যাবে না) 🚫

---

### Step 2️⃣: DynamoDB Table তৈরি করা (Locking এর জন্য)

```hcl
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
```
**ব্যাখ্যা:**  
- Simple একটা টেবিল যেখানে Locking Data রাখবে।

---

### Step 3️⃣: Backend Configuration করা (main.tf এর শুরুতেই)

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
```
✅ ব্যাস! এখন থেকে তোমার সমস্ত Terraform স্টেট ফাইল **S3** তে যাবে এবং **DynamoDB** দিয়ে Lock হবে!

---

# ৪. 📋 Terraform State Management Best Practices

| টিপস | ব্যাখ্যা |
|:-----|:---------|
| 🛡️ Remote State Use করো | টিমে কাজ করলে সবসময় S3/GCS Remote Backend ইউজ করো |
| 🔒 State Locking অন রাখো | DynamoDB/Table Lock ব্যবহার করো |
| 🗂️ State File Access Control করো | S3 Bucket ও DynamoDB টেবিলের জন্য IAM Policy দাও |
| 🕵️ State File এনক্রিপ্ট করো | S3 Server-Side Encryption Always অন রাখো |
| 🛑 State File ম্যানুয়ালি এডিট করো না | ভুল করলে পুরো প্রোজেক্ট নষ্ট হতে পারে |
| 🗃️ Terraform Workspaces ব্যবহার করো | Multiple Environments (dev, staging, prod) আলাদা করতে |
| 📝 State File Versioning রাখো | যেকোনো সময় rollback করার সুবিধা হবে |

---

## 📦 Terraform Workspaces, CLI State Commands ও Recovery Tips

---

# ১. 🔵 Terraform Workspaces

## Workspace কী?

> Terraform Workspaces হলো একি কোডবেস ব্যবহার করে **multiple environments** (যেমন: dev, staging, prod) আলাদা আলাদা State File-এ ম্যানেজ করার সুবিধা।

**সহজ ভাষায় বললে:**
- একি কোড দিয়ে **dev environment** এ আলাদা EC2
- **prod environment** এ আলাদা EC2
- কিন্তু দুইটার আলাদা আলাদা `.tfstate` ফাইল থাকবে।

---

## 📋 কাজের Flow:

| কমান্ড | কাজ |
|:-------|:----|
| `terraform workspace list` | Available সব Workspaces দেখাবে |
| `terraform workspace new <name>` | নতুন Workspace তৈরি করবে |
| `terraform workspace select <name>` | কোনো Workspace সিলেক্ট করবে |
| `terraform workspace show` | এখন কোন Workspace active আছে দেখাবে |

---

## ✅ প্র্যাকটিক্যাল Example:

### Step 1️⃣: নতুন Workspace তৈরি
```bash
terraform workspace new dev
terraform workspace new prod
```

### Step 2️⃣: Check করো Available Workspaces
```bash
terraform workspace list
```
👉 Output হবে:
```bash
* default
  dev
  prod
```

### Step 3️⃣: কোনো একটা Workspace select করো
```bash
terraform workspace select dev
```

### Step 4️⃣: এখন `terraform apply` করলে **dev.tfstate** এ স্টেট সেভ হবে!

---
  
## 📋 কোডে Workspace detect করে আলাদা Naming Convention:

```hcl
resource "aws_s3_bucket" "example" {
  bucket = "my-bucket-${terraform.workspace}"
}
```

> এতে করে dev/prod অনুযায়ী আলাদা আলাদা নাম তৈরি হবে!

---

# ২. 🛠️ Terraform CLI State Commands

Terraform State নিয়ে আরো কিছু Important CLI Command আছে যেগুলো অবশ্যই জানা লাগবে:

| কমান্ড | কাজ |
|:-------|:----|
| `terraform state list` | স্টেট ফাইলে কি কি রিসোর্স আছে তা দেখাবে |
| `terraform state show <resource>` | নির্দিষ্ট রিসোর্সের বিস্তারিত দেখাবে |
| `terraform state mv <source> <destination>` | স্টেটের মধ্যে রিসোর্স Move করবে |
| `terraform state rm <resource>` | স্টেট থেকে রিসোর্স Remove করবে |

---

## ✅ উদাহরণ:

### `terraform state list`
```bash
terraform state list
```
👉 Output:
```
aws_instance.example
aws_s3_bucket.my_bucket
```

---

### `terraform state show aws_instance.example`
```bash
terraform state show aws_instance.example
```
👉 Output:  
ইনস্ট্যান্সের সকল প্রপার্টি ও আইডি দেখাবে।

---

### `terraform state rm aws_instance.example`
```bash
terraform state rm aws_instance.example
```
👉 এই কমান্ড দিলে **aws_instance.example** স্টেট ফাইল থেকে ডিলিট হবে (কিন্তু AWS থেকে রিসোর্স ডিলিট হবে না)। ⚠️

---

### `terraform state mv`
```bash
terraform state mv aws_instance.old aws_instance.new
```
👉 একটা রিসোর্স স্টেটের মধ্যে Move করা হয় নতুন নামের অধীনে।

---

# ৩. 🔄 Terraform State File Recovery / Backup Tips

✅ **S3 Versioning Always Enable করো:**  
- যদি কখনো স্টেট ফাইল করাপ্ট বা মুছে যায়, তখন পুরাতন ভার্সন থেকে Restore করতে পারবে।

✅ **Manually Backup:**  
- Terraform Apply করার আগে `terraform state pull > backup-$(date +%F).tfstate` দিয়ে ব্যাকআপ রাখতে পারো।

✅ **Lock ব্যবহার করো (DynamoDB):**  
- একাধিক ইউজার একসাথে স্টেট আপডেট করলে Conflict থেকে রক্ষা পাওয়া যাবে।

✅ **Workspace আলাদা রাখো:**  
- Dev, Stage, Prod environment আলাদা রাখলে স্টেট মিশে যাওয়ার ভয় কম থাকবে।

✅ **State Encryption:**  
- S3 encryption অন রাখো যেন স্টেটের মধ্যে থাকা sensitive information (password, key) সুরক্ষিত থাকে।

✅ **Automation Backup:**  
- চাইলে একটি ক্রনজব/পাইপলাইন সেট করতে পারো যা প্রতিদিন `state` ব্যাকআপ নেবে।

---

# 📢 একদম সংক্ষেপে আজকের টপিকস:

| টপিক | সংক্ষিপ্ত সারাংশ |
|:------|:---------------|
| Terraform Workspace | একই কোড দিয়ে multiple environment আলাদা রাখা |
| Terraform State Commands | স্টেট ম্যানিপুলেশন (list, show, mv, rm) |
| State Backup & Recovery | সঠিক ভাবে স্টেট Protect ও Recover করা |

---

## 📦 পর্ব ৭: প্রোডাকশন লেভেল Terraform প্র্যাকটিস

---

## ১. 🔥 Environment based Deployment (dev, staging, prod)

## ✅ ফোল্ডার স্ট্রাকচার:

```bash
terraform-project/
│
├── modules/
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── envs/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   │
│   ├── staging/
│   │   └── same structure...
│   │
│   └── prod/
│       └── same structure...
│
└── README.md
```

---

## ✅ উদাহরণ কোড:

### `modules/ec2/main.tf`
```hcl
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Instance-${terraform.workspace}"
  }
}
```

---

### `modules/ec2/variables.tf`
```hcl
variable "ami_id" {}
variable "instance_type" {}
```

---

### `modules/ec2/outputs.tf`
```hcl
output "instance_id" {
  value = aws_instance.this.id
}
```

---

### `envs/dev/main.tf`
```hcl
provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
}
```

---

### `envs/dev/variables.tf`
```hcl
variable "ami_id" {}
variable "instance_type" {}
```

---

### `envs/dev/terraform.tfvars`
```hcl
ami_id         = "ami-0123456789abcdef0"
instance_type  = "t2.micro"
```

---

### `envs/dev/backend.tf`
```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
```

---

## ✅ কাজের ধাপ:

```bash
cd envs/dev

terraform init
terraform workspace new dev
terraform plan
terraform apply
```
👉 Dev Environment এ Deploy হয়ে যাবে আলাদা State দিয়ে।

---

---

# ২. 🧤 Workspaces ব্যবহার (dev, staging, prod)

**Workspaces** দিয়ে environment গুলো আলাদা রাখবো।
- Dev এর জন্য `workspace dev`
- Staging এর জন্য `workspace staging`
- Prod এর জন্য `workspace prod`

> আগে যেমন দেখেছি, আলাদা স্টেট অটোমেটিক সেভ হবে ✅

---

---

# ৩. 🔒 Sensitive Variable Handling

Production এ **sensitive data** (password, secret key) সরাসরি `.tfvars` বা `.tf` ফাইলে রাখবো না!

### ✅ Secure Variable Store:

| Option | Best For | Tool |
|:------|:---------|:-----|
| Vault | বড় প্রজেক্ট | HashiCorp Vault |
| AWS Secrets Manager | AWS ব্যবহারকারী | Terraform + Secrets Manager Integration |

---

## 🎯 HashiCorp Vault ইন্টিগ্রেশন (ছোট উদাহরণ):

### Terraform Provider:
```hcl
provider "vault" {
  address = "http://127.0.0.1:8200"
}

data "vault_generic_secret" "aws_creds" {
  path = "aws/creds/terraform"
}

provider "aws" {
  access_key = data.vault_generic_secret.aws_creds.data["access_key"]
  secret_key = data.vault_generic_secret.aws_creds.data["secret_key"]
}
```

---

## 🎯 AWS Secrets Manager থেকে Secrets:

```hcl
data "aws_secretsmanager_secret_version" "example" {
  secret_id = "my_secret"
}

locals {
  secret_content = jsondecode(data.aws_secretsmanager_secret_version.example.secret_string)
}
```

এভাবে password / API key সিকিউর রাখবো।

---

---

# ৪. 🔄 CI/CD Integration (GitHub Actions / GitLab CI)

Production এ **Terraform Manual apply করা হবে না।**
👉 আমরা Automation করবো: Code push দিলেই Plan + Apply হবে।

---

## ✅ উদাহরণ: GitHub Actions দিয়ে

### `.github/workflows/terraform.yml`
```yaml
name: Terraform CI/CD

on:
  push:
    branches:
      - main

jobs:
  terraform:
    name: 'Terraform Plan and Apply'
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Code
      uses: actions/checkout@v3

    - name: Setup Terraform
      uses: hashicorp/setup-terraform@v2

    - name: Terraform Init
      run: terraform init

    - name: Terraform Plan
      run: terraform plan

    - name: Terraform Apply
      if: github.ref == 'refs/heads/main'
      run: terraform apply -auto-approve
```

---

## ✅ উদাহরণ: GitLab CI দিয়ে

### `.gitlab-ci.yml`
```yaml
stages:
  - validate
  - plan
  - apply

validate:
  stage: validate
  script:
    - terraform init
    - terraform validate

plan:
  stage: plan
  script:
    - terraform plan -out=tfplan

apply:
  stage: apply
  script:
    - terraform apply -auto-approve tfplan
  when: manual
```
(Apply **Manual Approval** দিয়ে করানো উচিত production এর জন্য!)

---

## 📦 পর্ব ৮: রিয়েল ওয়ার্ল্ড প্রজেক্ট (Terraform)

---

## 🎯 প্রজেক্ট Goal:

- ✅ VPC তৈরি (Default use)
- ✅ Public Subnet তৈরি
- ✅ EC2 Server তৈরি
- ✅ RDS Database তৈরি (MySQL)
- ✅ S3 Bucket তৈরি
- ✅ মডিউল use
- ✅ স্টেট S3 + DynamoDB তে রাখা
- ✅ Errors ধরতে Debugging টিপস

---

## ✅ ১. ফোল্ডার স্ট্রাকচার:

```bash
terraform-project/
│
├── modules/
│   ├── ec2/
│   ├── rds/
│   ├── s3/
│
├── envs/
│   └── dev/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── terraform.tfvars
│       └── backend.tf
│
└── README.md
```

---

## ✅ ২. Module Example (EC2, RDS, S3)

---

### `modules/ec2/main.tf`
```hcl
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "EC2-${terraform.workspace}"
  }
}
```

---

### `modules/ec2/variables.tf`
```hcl
variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
```

---

### `modules/ec2/outputs.tf`
```hcl
output "instance_public_ip" {
  value = aws_instance.web.public_ip
}
```

---

### `modules/rds/main.tf`
```hcl
resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.db_user
  password             = var.db_password
  db_name              = var.db_name
  skip_final_snapshot  = true
  publicly_accessible  = true
}
```

---

### `modules/rds/variables.tf`
```hcl
variable "db_user" {}
variable "db_password" {}
variable "db_name" {}
```

---

### `modules/s3/main.tf`
```hcl
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"
}
```

---

### `modules/s3/variables.tf`
```hcl
variable "bucket_name" {}
```

---

## ✅ ৩. `envs/dev/main.tf`

```hcl
provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}

module "rds" {
  source       = "../../modules/rds"
  db_user      = var.db_user
  db_password  = var.db_password
  db_name      = var.db_name
}

module "s3" {
  source       = "../../modules/s3"
  bucket_name  = var.bucket_name
}
```

---

## ✅ ৪. `envs/dev/variables.tf`

```hcl
variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "db_user" {}
variable "db_password" {}
variable "db_name" {}
variable "bucket_name" {}
```

---

## ✅ ৫. `envs/dev/terraform.tfvars`

```hcl
ami_id         = "ami-0c55b159cbfafe1f0"
instance_type  = "t2.micro"
subnet_id      = "subnet-xxxxxxxx"
db_user        = "admin"
db_password    = "Admin12345"
db_name        = "mydb"
bucket_name    = "my-terraform-bucket-123"
```

---

## ✅ ৬. `envs/dev/backend.tf`

```hcl
terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
```

---

## ✅ ৭. কমান্ডস:

```bash
cd envs/dev

terraform init
terraform workspace new dev
terraform plan
terraform apply
```

✅ এখন EC2, RDS, S3 সব Create হয়ে যাবে।

---

# 🛠 Error Handling & Debugging Tips:

### ১. Plan এ যদি Error আসে:
- Check করো Variable মিসিং আছে কিনা
- AMI ID বা Subnet ID ভুল হয়েছে কিনা
- Provider Configure করা আছে কিনা

### ২. Terraform Debug Mode চালু:

```bash
TF_LOG=DEBUG terraform apply
```

- এর ফলে Internal API Call Details ও Error Info দেখাবে

### ৩. State Problem:
- State File corrupt হলে:
  - S3 থেকে backup version restore করা যায়
  - বা `terraform state list`, `state show`, `state mv` দিয়ে ম্যানেজ করা যায়

---
