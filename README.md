# Terraform

---

## 📘 **Terraform – পর্ব ১: ভূমিকা ও বেসিক ধারণা**

### 🧠 Terraform কী?

**Terraform** হলো একটি ওপেন-সোর্স **Infrastructure as Code (IaC)** টুল, যা তৈরি করেছে [HashiCorp]। এর মাধ্যমে আপনি কোড দিয়ে সার্ভার, নেটওয়ার্ক, ডেটাবেইস, ক্লাউড রিসোর্স ইত্যাদি তৈরি, কনফিগার এবং ম্যানেজ করতে পারেন।

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

### 🔧 **পর্ব ৩: Terraform ফাইল ও সিনট্যাক্স**

#### ১. **Terraform ফাইল স্ট্রাকচার**

Terraform কনফিগারেশন ফাইল সাধারণত `.tf` এক্সটেনশনে লেখা হয়। এই ফাইলগুলো কোড আকারে ইনফ্রাস্ট্রাকচার তৈরি ও পরিচালনা করতে ব্যবহৃত হয়।

##### সাধারণ Terraform কনফিগারেশন ফাইলের উদাহরণ:
```hcl
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
```

---

#### ২. **Provider**

**Provider** হলো Terraform-এর এমন একটি প্লাগইন যা ক্লাউড বা অন্যান্য সিস্টেমের সঙ্গে ইন্টারঅ্যাক্ট করে। এটি Terraform কে বলে যে কোন প্ল্যাটফর্ম বা সার্ভিসে কাজ করতে হবে।

যেমন, যদি আপনি AWS ব্যবহার করতে চান, তাহলে আপনাকে AWS Provider কনফিগার করতে হবে:

```hcl
provider "aws" {
  region = "us-west-2"  # আপনার সঠিক region দিন
}
```

Terraform এর সঙ্গে বিভিন্ন ক্লাউড প্ল্যাটফর্মের প্রোভাইডার কাজ করে:  
- AWS
- Azure
- Google Cloud
- DigitalOcean
- এবং আরও অনেক কিছু

---

#### ৩. **Resources**

**Resources** হলো Terraform এর মূল উপাদান। এগুলো আপনার ইনফ্রাস্ট্রাকচার তৈরি বা ম্যানেজ করতে ব্যবহৃত হয়। উদাহরণস্বরূপ, AWS EC2 instance তৈরি করতে একটি `aws_instance` resource ব্যবহার করা হয়।

```hcl
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # সঠিক AMI ID দিন
  instance_type = "t2.micro"               # ইনস্ট্যান্স টাইপ
}
```

এখানে `aws_instance` হলো **resource type**, এবং `"example"` হলো এর নাম।

---

#### ৪. **Variables**

Terraform-এ **variables** ব্যবহার করে কোডকে আরও ডাইনামিক এবং পুনরায় ব্যবহারযোগ্য করা যায়। এর মাধ্যমে আপনি একাধিক কনফিগারেশনে একই ধরনের মান ব্যবহার করতে পারেন।

**Variable Declaration**:
```hcl
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
```

এখানে, `instance_type` একটি ভ্যারিয়েবল, যার ডিফল্ট মান হলো `"t2.micro"`।

**Variable Usage**:
```hcl
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type  # ভ্যারিয়েবল ব্যবহার করা হচ্ছে
}
```

এখানে, `var.instance_type` দিয়ে আমরা ভ্যারিয়েবল ব্যবহার করছি।

---

#### ৫. **Outputs**

**Outputs** হলো Terraform-এর মাধ্যমে তৈরি রিসোর্স থেকে তথ্য বের করার উপায়। উদাহরণস্বরূপ, যদি আপনি EC2 instance এর public IP চান, তাহলে এটি আউটপুট হিসেবে বের করা যায়।

```hcl
output "instance_ip" {
  value = aws_instance.example.public_ip
}
```

এটি `terraform apply` করার পর `instance_ip` আউটপুট দেখাবে, যেখানে আপনার তৈরি EC2 instance এর IP থাকবে।

---

#### ৬. **Resources, Variables, Outputs – একটি উদাহরণ**

ধরা যাক আপনি একটি EC2 instance তৈরি করছেন এবং তার IP আউটপুট করতে চান। তাহলে কোডটি দেখতে এমন হবে:

```hcl
# AWS Provider কনফিগারেশন
provider "aws" {
  region = "us-east-1"
}

# EC2 instance তৈরি
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # সঠিক AMI ID দিন
  instance_type = "t2.micro"               # ইনস্ট্যান্স টাইপ
}

# আউটপুট
output "instance_ip" {
  value = aws_instance.example.public_ip
}
```

**Steps to Execute**:
1. `terraform init` – প্রোজেক্টটি ইনিশিয়ালাইজ করুন।
2. `terraform plan` – কনফিগারেশন পরীক্ষা করুন।
3. `terraform apply` – রিসোর্স তৈরি করুন এবং আউটপুট দেখুন।

---

### ⚙️ **Terraform কোড সিনট্যাক্স মূল পয়েন্ট**

- **`provider`**: ক্লাউড বা অন্যান্য সিস্টেমের সঙ্গে কাজ করতে প্রোভাইডার কনফিগারেশন।
- **`resource`**: Terraform এর মাধ্যমে ম্যানেজ করার জন্য রিসোর্স তৈরি।
- **`variable`**: কনফিগারেশনকে ডাইনামিক করার জন্য ভ্যারিয়েবলস।
- **`output`**: Terraform আউটপুট হিসেবে ফলাফল প্রকাশ করা।

---

