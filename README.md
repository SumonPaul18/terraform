### Terraform

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

**Linux এ Terraform ইনস্টলেশন** এবং তার পর **Terraform এর প্রাথমিক ব্যবহার**।

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

