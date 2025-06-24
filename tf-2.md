# Terraform: Infrastructure as Code (IaC) - From Zero to Hero

---

🚀 **Terraform কি এবং কেন আপনার জানা উচিত?** 🚀

আধুনিক ক্লাউড ইনফ্রাস্ট্রাকচার ব্যবস্থাপনার জগতে **Terraform** একটি গেম-চেঞ্জার। এটি শুধুমাত্র একটি টুল নয়, বরং আপনার DevOps যাত্রাকে ত্বরাণ্বিত করার একটি প্রবেশদ্বার। আপনি কি আপনার ইনফ্রাস্ট্রাকচারকে কোড হিসেবে সংজ্ঞায়িত করতে, স্বয়ংক্রিয় করতে এবং বারবার পুনরাবৃত্তিযোগ্যভাবে স্থাপন করতে চান? তাহলে আপনি সঠিক জায়গায় এসেছেন!

এই রিপোজিটরিটি Terraform এর একটি সম্পূর্ণ হ্যান্ডবুক। প্রাথমিক ধারণা থেকে শুরু করে জটিল প্রজেক্ট বাস্তবায়ন, AWS, GCP, OpenStack এর মতো ক্লাউড প্ল্যাটফর্মের সাথে সংযোগ স্থাপন এবং CI/CD পাইপলাইনে এর একীকরণ—সবকিছুই এখানে ধাপে ধাপে আলোচনা করা হয়েছে।

## 📖 **সূচিপত্র (Table of Contents)**

1.  [**Introduction: Welcome to the World of Terraform\!**](https://www.google.com/search?q=%23introduction-welcome-to-the-world-of-terraform)
      * [What is Terraform? At a Glance\!](https://www.google.com/search?q=%23what-is-terraform-at-a-glance)
      * [Infrastructure as Code (IaC): Why is it the Future of Technology?](https://www.google.com/search?q=%23infrastructure-as-code-iac-why-is-it-the-future-of-technology)
2.  [**Advantages & Disadvantages of Terraform: Is It Right For You?**](https://www.google.com/search?q=%23advantages--disadvantages-of-terraform-is-it-right-for-you)
      * [The Unique Advantages](https://www.google.com/search?q=%23the-unique-advantages)
      * [Be Aware of the Challenges](https://www.google.com/search?q=%23be-aware-of-the-challenges)
3.  [**Why Use Terraform? Your Questions Answered\!**](https://www.google.com/search?q=%23why-use-terraform-your-questions-answered)
4.  [**How Terraform Works: The Inner Mechanisms\!**](https://www.google.com/search?q=%23how-terraform-works-the-inner-mechanisms)
      * [HCL (HashiCorp Configuration Language): Your Infra Coding Language](https://www.google.com/search?q=%23hcl-hashicorp-configuration-language-your-infra-coding-language)
      * [Terraform Workflow: Init, Plan, Apply - Your Daily Routine](https://www.google.com/search?q=%23terraform-workflow-init-plan-apply---your-daily-routine)
5.  [**Installing Terraform on Linux: Get Ready\!**](https://www.google.com/search?q=%23installing-terraform-on-linux-get-ready)
6.  [**Terraform with Cloud Providers: Multi-Cloud Magic\!**](https://www.google.com/search?q=%23terraform-with-cloud-providers-multi-cloud-magic)
      * [`provider.tf`: Your Cloud Gateway](https://www.google.com/search?q=%23providertf-your-cloud-gateway)
      * [Connecting with AWS, GCP, & OpenStack: Easy Methods](https://www.google.com/search?q=%23connecting-with-aws-gcp--openstack-easy-methods)
      * [Other Secure Connection Methods](https://www.google.com/search?q=%23other-secure-connection-methods)
7.  [**Basic Usage of Terraform: Your First Steps**](https://www.google.com/search?q=%23basic-usage-of-terraform-your-first-steps)
      * [Creating Resources: Your First Infra](https://www.google.com/search?q=%23creating-resources-your-first-infra)
      * [Using Variables: Make Your Infra Dynamic](https://www.google.com/search?q=%23using-variables-make-your-infra-dynamic)
      * [Outputs: Extract Important Information](https://www.google.com/search?q=%23outputs-extract-important-information)
8.  [**Advanced Usage of Terraform: Professional Techniques**](https://www.google.com/search?q=%23advanced-usage-of-terraform-professional-techniques)
      * [Modules: Your Infra Library](https://www.google.com/search?q=%23modules-your-infra-library)
      * [Workspaces: Isolate Environments](https://www.google.com/search?q=%23workspaces-isolate-environments)
      * [Remote State: The Key to Teamwork](https://www.google.com/search?q=%23remote-state-the-key-to-teamwork)
      * [Data Sources: Utilize Existing Resources](https://www.google.com/search?q=%23data-sources-utilize-existing-resources)
      * [Loops & Conditionals: Smart Infra Coding](https://www.google.com/search?q=%23loops--conditionals-smart-infra-coding)
9.  [**Real-world Projects with Terraform & AWS: Learn Hands-On\!**](https://www.google.com/search?q=%23real-world-projects-with-terraform--aws-learn-hands-on)
      * [Project 1: A Single EC2 Instance](https://www.google.com/search?q=%23project-1-a-single-ec2-instance)
      * [Project 2: EC2 with Custom VPC, Subnet, & Security Group](https://www.google.com/search?q=%23project-2-ec2-with-custom-vpc-subnet--security-group)
      * [Project 3: A Complete Web Application Architecture](https://www.google.com/search?q=%23project-3-a-complete-web-application-architecture)
10. [**Additional & Advanced Terraform Use Cases: The Next Step**](https://www.google.com/search?q=%23additional--advanced-terraform-use-cases-the-next-step)
      * [Custom Providers: Meet Your Own Needs](https://www.google.com/search?q=%23custom-providers-meet-your-own-needs)
      * [Terragrunt: Empower Terraform Even More](https://www.google.com/search?q=%23terragrunt-empower-terraform-even-more)
      * [Terraform in CI/CD Pipelines: Automated Deployment](https://www.google.com/search?q=%23terraform-in-cicd-pipelines-automated-deployment)
      * [Testing Terraform Configurations: Error-Free Infra](https://www.google.com/search?q=%23testing-terraform-configurations-error-free-infra)
11. [**Contact & Contributions: Learn Together, Build Together**](https://www.google.com/search?q=%23contact--contributions-learn-together-build-together)
12. [**License**](https://www.google.com/search?q=%23license)

---

## 🚀 ভূমিকা: Terraform এর দুনিয়ায় স্বাগতম!

আজকের দ্রুত পরিবর্তনশীল ডিজিটাল বিশ্বে, দক্ষতার সাথে ক্লাউড ইনফ্রাস্ট্রাকচার পরিচালনা করা যেকোনো সফল প্রজেক্টের জন্য অত্যাবশ্যক। ম্যানুয়াল কনফিগারেশন ত্রুটিপূর্ণ, সময়সাপেক্ষ এবং পুনরাবৃত্তিযোগ্য নয়। এখানেই **Terraform** এর মতো **Infrastructure as Code (IaC)** টুলগুলো ত্রাণকর্তা হিসেবে আবির্ভূত হয়! এই রিপোজিটরিটি আপনার জন্য একটি ওয়ান-স্টপ সলিউশন, যা Terraform এর সব খুঁটিনাটি বিষয় পরিষ্কারভাবে তুলে ধরবে।

### Terraform কী? এক নজরে!

**Terraform** হলো HashiCorp কর্তৃক ডেভেলপ করা একটি ওপেন-সোর্স IaC টুল, যা আপনাকে "Declarative Configuration Files" ব্যবহার করে আপনার ইনফ্রাস্ট্রাকচার তৈরি, পরিবর্তন এবং ধ্বংস করতে সাহায্য করে। এটি কেবল ক্লাউডেই নয়, অন-প্রেমিসেস ডেটাসেন্টারেও কাজ করে। এর মূল শক্তি হলো এর **প্রোভাইডার-এগনস্টিক** ডিজাইন, যার অর্থ আপনি একই Terraform ওয়ার্কফ্লো ব্যবহার করে AWS, GCP, Azure, VMware, OpenStack এবং এমনকি কাস্টম সার্ভিসগুলো পরিচালনা করতে পারেন!

### Infrastructure as Code (IaC): কেন এটি ভবিষ্যতের প্রযুক্তি?

IaC মানে হলো আপনার ইনফ্রাস্ট্রাকচার রিসোর্সগুলোকে কোড হিসেবে সংজ্ঞায়িত করা। এর প্রধান সুবিধাগুলো হলো:

* **স্বয়ংক্রিয়তা:** ইনফ্রাস্ট্রাকচার প্রভিশনিং স্বয়ংক্রিয় হয়, যা মানুষের ত্রুটি কমায়।
* **পুনরাবৃত্তিযোগ্যতা:** একই ইনফ্রাস্ট্রাকচার যতবার খুশি, একই ফলাফলের সাথে তৈরি করা যায়।
* **সংস্করণ নিয়ন্ত্রণ (Version Control):** আপনার ইনফ্রা কোড Git-এর মতো সিস্টেমে সংরক্ষিত থাকে, যা পরিবর্তনগুলো ট্র্যাক করতে এবং প্রয়োজনে রোলব্যাক করতে সাহায্য করে।
* **সহযোগিতা:** ডেভেলপমেন্ট এবং অপারেশনস টিমের মধ্যে ইনফ্রা ব্যবস্থাপনায় সহযোগিতা বৃদ্ধি পায়।
* **দ্রুত ডিপ্লয়মেন্ট:** নতুন পরিবেশ বা রিসোর্স দ্রুত স্থাপন করা যায়।

---

## ⚖️ Terraform এর সুবিধা ও অসুবিধা: আপনার জন্য কোনটি সেরা?

যেকোনো টুলের মতো, Terraform এরও নিজস্ব শক্তি এবং দুর্বলতা রয়েছে। এগুলো ভালোভাবে বোঝা আপনাকে সিদ্ধান্ত নিতে সাহায্য করবে যে এটি আপনার প্রজেক্টের জন্য সঠিক পছন্দ কিনা।

### অনন্য সুবিধাগুলো

* **মাল্টি-ক্লাউড সুপারপাওয়ার (Multi-Cloud Superpower):** একটি একক, পরিচিত ওয়ার্কফ্লো ব্যবহার করে AWS, GCP, Azure, OpenStack এবং আরও অনেক ক্লাউড/সার্ভিস পরিচালনা করুন। আপনার টিমের একাধিক টুল শেখার প্রয়োজন নেই।
* **স্টেট ম্যানেজমেন্টের জাদু (The Magic of State Management):** Terraform একটি `terraform.tfstate` ফাইল ব্যবহার করে আপনার ইনফ্রাস্ট্রাকচারের বর্তমান "বাস্তব" অবস্থা ট্র্যাক করে। এটি আপনার কনফিগারেশন এবং বাস্তব অবস্থার মধ্যে যেকোনো অসঙ্গতি (Drift) সনাক্ত করতে পারে এবং শুধুমাত্র প্রয়োজনীয় পরিবর্তনগুলোই প্রয়োগ করে, যা অপ্রত্যাশিত পরিস্থিতি এড়ায়।
* **ইমিউটেবল ইনফ্রাস্ট্রাকচার (Immutable Infrastructure):** Terraform আপনাকে এমন ইনফ্রাস্ট্রাকচার তৈরি করতে উৎসাহিত করে যা একবার তৈরি হলে আর পরিবর্তন হয় না। কোনো আপডেট প্রয়োজন হলে, নতুন ইনফ্রাস্ট্রাকচার তৈরি করে পুরাতনটি প্রতিস্থাপন করা হয়। এটি সামঞ্জস্যতা এবং নির্ভরযোগ্যতা নিশ্চিত করে।
* **মডুলারিটি ও পুনঃব্যবহারযোগ্যতা (Modularity & Reusability):** মডিউল ব্যবহার করে আপনি আপনার ইনফ্রাস্ট্রাকচারের অংশগুলোকে ছোট, পুনঃব্যবহারযোগ্য কম্পোনেন্টে ভাগ করতে পারেন। এটি জটিল কনফিগারেশনকে সহজ করে এবং কোড ডুপ্লিকেশন কমায়।
* **প্ল্যানিং ও প্রিভিউ (Planning & Preview Power):** `terraform plan` কমান্ডটি আপনাকে কোনো পরিবর্তন প্রয়োগ করার আগে ঠিক কী কী ঘটবে তার একটি বিস্তারিত চিত্র দেখায়। এটি আপনার আত্মবিশ্বাস বাড়ায় এবং অবাঞ্ছিত পরিবর্তন এড়াতে সাহায্য করে।
* **বিস্তৃত কমিউনিটি ও ইকোসিস্টেম (Vast Community & Ecosystem):** Terraform এর একটি বিশাল এবং সক্রিয় কমিউনিটি রয়েছে। এর মানে হলো, যেকোনো সমস্যা বা প্রশ্নের জন্য আপনি সহজেই অনলাইন রিসোর্স, ফোরাম এবং কমিউনিটির সাপোর্ট পাবেন।

### চ্যালেঞ্জগুলোও জেনে রাখুন

* **স্টেট ফাইল ম্যানেজমেন্টের জটিলতা (State File Management Complexity):** দলগত পরিবেশে `terraform.tfstate` ফাইল পরিচালনা করা চ্যালেঞ্জিং হতে পারে। সঠিক ব্যাকএন্ড (যেমন S3 বা Terraform Cloud) এবং স্টেট লকিং ব্যবহার না করলে ডেটা হারিয়ে যাওয়া বা কনফিগারেশন ওভাররাইট হওয়ার ঝুঁকি থাকে।
* **শিখন বক্রতা (Learning Curve):** IaC এবং Declarative Programming-এর সাথে নতুনদের জন্য Terraform এর HCL সিনট্যাক্স এবং ওয়ার্কফ্লোতে অভ্যস্ত হতে কিছুটা সময় লাগতে পারে।
* **ডিবাগিং এর চ্যালেঞ্জ (Debugging Challenges):** জটিল কনফিগারেশনে বা প্রোভাইডারের নির্দিষ্ট সমস্যায় ত্রুটি খুঁজে বের করা কিছুটা সময়সাপেক্ষ হতে পারে।
* **প্রোভাইডার সাপোর্টের সীমাবদ্ধতা (Provider Support Limitations):** যদিও অধিকাংশ জনপ্রিয় সার্ভিস সাপোর্টেড, কিছু নতুন বা নিচ সার্ভিস/ফিচারের জন্য প্রোভাইডার সাপোর্ট আসতে সময় লাগতে পারে।

---

## 🎯 কেন Terraform ব্যবহার করবেন?

আপনি কেন আপনার ইনফ্রাস্ট্রাকচার ব্যবস্থাপনার জন্য Terraform কে বেছে নেবেন, তার কিছু শক্তিশালী কারণ নিচে দেওয়া হলো:

* **গতি ও নির্ভরযোগ্যতা (Speed & Reliability):** ম্যানুয়ালি সার্ভার সেটআপের দিন শেষ! Terraform দিয়ে আপনি কয়েক মিনিটের মধ্যে জটিল ইনফ্রাস্ট্রাকচার তৈরি করতে পারেন, যা ম্যানুয়াল প্রক্রিয়ার চেয়ে অনেক দ্রুত এবং ত্রুটিমুক্ত।
* **সংস্করণ নিয়ন্ত্রণ ও অডিটিবিলিটি (Version Control & Auditability):** আপনার ইনফ্রাস্ট্রাকচার এখন কোড। এর মানে হলো, Git-এর মাধ্যমে প্রতিটি পরিবর্তন ট্র্যাক করা যায়। কে কখন কী পরিবর্তন করেছে, তা সহজেই জানা যায়, যা নিরাপত্তা এবং কমপ্লায়েন্সের জন্য জরুরি।
* **খরচ সাশ্রয় (Cost Savings):** স্বয়ংক্রিয়ভাবে রিসোর্স তৈরি ও ধ্বংস করার ক্ষমতা আপনাকে অপচয় কমাতে সাহায্য করে। অপ্রয়োজনীয় রিসোর্স দীর্ঘ সময় ধরে চালু থাকার খরচ এড়ানো যায়।
* **উন্নত সহযোগিতা (Enhanced Collaboration):** Terraform ফাইলগুলো আপনার টিমের জন্য ইনফ্রাস্ট্রাকচার নিয়ে কাজ করার একটি সাধারণ ভাষা তৈরি করে। ডেভেলপার এবং অপারেশনস টিম একসাথে কাজ করতে পারে।
* **দুর্যোগ পুনরুদ্ধার (Disaster Recovery):** বিপর্যয় ঘটলে? কোনো চিন্তা নেই! আপনার ইনফ্রাস্ট্রাকচারের কোড যেহেতু আপনার কাছে আছে, আপনি দ্রুত একটি নতুন অঞ্চলে বা নতুন অ্যাকাউন্টে আপনার সম্পূর্ণ পরিবেশ পুনর্নির্মাণ করতে পারবেন।
* **মাল্টি-ক্লাউড ফ্লেক্সিবিলিটি (Multi-Cloud Flexibility):** আপনার ব্যবসা কি একাধিক ক্লাউড ব্যবহার করে? Terraform আপনাকে একটি একক টুল দিয়ে তাদের সবকটিকে পরিচালনা করতে সক্ষম করে, যা ভবিষ্যতের প্রমাণের জন্য অত্যাবশ্যক।

---

## 🧠 Terraform কিভাবে কাজ করে? ভেতরের মেকানিজম!

Terraform এর কাজের পদ্ধতি বেশ যৌক্তিক। এটি আপনার ঘোষিত ইনফ্রাস্ট্রাকচার কনফিগারেশনকে বাস্তবে রূপান্তর করে।

### HCL (HashiCorp Configuration Language): আপনার ইনফ্রা কোডিং ভাষা

Terraform তার নিজস্ব কনফিগারেশন ভাষা **HCL** (HashiCorp Configuration Language) ব্যবহার করে। এটি মানুষের পড়ার জন্য খুব সহজ এবং JSON এর সাথে সামঞ্জস্যপূর্ণ। HCL ফাইলগুলোতে আপনি `resource` ব্লক ব্যবহার করে ক্লাউড রিসোর্স (যেমন EC2 ইনস্ট্যান্স, S3 বাকেট) সংজ্ঞায়িত করেন, `variable` ব্যবহার করে সেগুলোকে ডাইনামিক করেন এবং `output` ব্যবহার করে গুরুত্বপূর্ণ তথ্য এক্সট্র্যাক্ট করেন।

**একটি S3 বাকেট তৈরির উদাহরণ:**

```hcl
resource "aws_s3_bucket" "my_first_bucket" {
  bucket = "my-awesome-terraform-demo-bucket-2025" # একটি অনন্য নাম দিন
  acl    = "private"
  tags = {
    Project     = "Terraform Demo"
    Environment = "Development"
  }
}
````

### Terraform Workflow: Init, Plan, Apply - আপনার দৈনিক রুটিন

Terraform এর সাথে কাজ করার একটি স্ট্যান্ডার্ড ওয়ার্কফ্লো রয়েছে:

1.  **`terraform init`:**

      * **প্রস্তুতি:** প্রথম কমান্ড যা আপনি যেকোনো নতুন Terraform কনফিগারেশনের জন্য চালাবেন।
      * **কাজ:** এটি আপনার কনফিগারেশনে ব্যবহৃত প্রোভাইডার প্লাগইনগুলো ডাউনলোড করে এবং প্রয়োজনীয় ব্যাকএন্ড সেটআপ করে।
      * **একবারই যথেষ্ট:** সাধারণত প্রতি কনফিগারেশনের জন্য একবারই চালানো হয়, যদি না প্রোভাইডার বা ব্যাকএন্ড সেটিংস পরিবর্তন হয়।

2.  **`terraform plan`:**

      * **প্রিভিউ:** এটি একটি "ড্রাই রান" যা আপনাকে দেখায় `apply` কমান্ড চালালে ঠিক কী কী পরিবর্তন হবে।
      * **বিশ্লেষণ:** আপনার বর্তমান স্টেট ফাইলের সাথে আপনার নতুন কনফিগারেশন ফাইলের তুলনা করে।
      * **নিরাপত্তা:** এটি আপনাকে অপ্রত্যাশিত পরিবর্তন বা ভুল কনফিগারেশন এড়াতে সাহায্য করে।

3.  **`terraform apply`:**

      * **বাস্তবায়ন:** `plan` দ্বারা দেখানো পরিবর্তনগুলি আপনার ক্লাউড প্রোভাইডারে প্রয়োগ করে।
      * **অনুমোদন:** আপনাকে পরিবর্তনগুলি এগিয়ে নেওয়ার জন্য নিশ্চিত করতে বলা হবে (যেমন `yes` টাইপ করে)।
      * **ইনফ্রাস্ট্রাকচার তৈরি:** এই কমান্ডটিই আপনার আসল ইনফ্রাস্ট্রাকচার তৈরি বা পরিবর্তন করে।

4.  **`terraform destroy`:**

      * **পরিষ্কার-পরিচ্ছন্নতা:** এই কমান্ডটি আপনার Terraform কনফিগারেশন দ্বারা পরিচালিত সমস্ত রিসোর্স সম্পূর্ণরূপে মুছে ফেলে।
      * **সাবধান:** এটি একটি অত্যন্ত শক্তিশালী কমান্ড, প্রোডাকশন পরিবেশে এটি ব্যবহারের সময় অত্যন্ত সতর্ক থাকুন\!

-----

## 🐧 Installing Terraform on Linux: Get Ready!

Linux সিস্টেমে Terraform ইন্সটল করা বেশ সহজ এবং সোজা। নিচে জনপ্রিয় ডিস্ট্রিবিউশনগুলোর জন্য ধাপগুলো দেওয়া হলো:

**Ubuntu/Debian ভিত্তিক সিস্টেমে ইন্সটলেশন:**


**HashiCorp GPG key যোগ করুন - এটি HashiCorp এর প্যাকেজগুলোর সত্যতা যাচাই করে।**
```
wget -O- [https://apt.releases.hashicorp.com/gpg](https://apt.releases.hashicorp.com/gpg) | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
```
**HashiCorp এর অফিসিয়াল APT repository আপনার সিস্টেমে যোগ করুন।**
```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] [https://apt.releases.hashicorp.com](https://apt.releases.hashicorp.com) $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```
**প্যাকেজ লিস্ট আপডেট করুন যাতে নতুন repository থেকে প্যাকেজগুলো পাওয়া যায়।**
```
sudo apt update
```
**Terraform ইন্সটল করুন!**
```
sudo apt install terraform
```

### RHEL/CentOS ভিত্তিক সিস্টেমে ইন্সটলেশন:

**yum-config-manager ইন্সটল করুন (যদি না থাকে, এটি repository ব্যবস্থাপনার জন্য দরকার)।**
```
sudo yum install -y yum-utils
```
**HashiCorp repository যোগ করুন আপনার সিস্টেমে।**
```
sudo yum-config-manager --add-repo [https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo](https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo)
```
**Terraform ইন্সটল করুন!**
```
sudo yum -y install terraform
```

**ইন্সটলেশন যাচাই (Verify Installation):**

সফলভাবে ইন্সটল হয়েছে কিনা তা নিশ্চিত করতে, আপনার টার্মিনালে এই কমান্ডটি চালান:

```
terraform --version
```

যদি ইন্সটলেশন সফল হয়, তাহলে আপনি Terraform এর বর্তমান ভার্সন দেখতে পাবেন। যেমন: `Terraform v1.x.x`

-----

## ☁️ বিভিন্ন ক্লাউড প্রোভাইডারের সাথে Terraform: ক্রেডেনশিয়াল সেটআপ গাইড

Terraform বিভিন্ন ক্লাউড প্রোভাইডারের সাথে কাজ করার জন্য সংশ্লিষ্ট ক্লাউডের API অ্যাক্সেস করার জন্য ক্রেডেনশিয়ালস (credentials) প্রয়োজন। এই ক্রেডেনশিয়ালস সেটআপ করার জন্য একাধিক নিরাপদ এবং কিছু কম নিরাপদ পদ্ধতি রয়েছে।

### `provider.tf` ফাইল কনফিগারেশন: আপনার ক্লাউড গেটওয়ে 

আপনার Terraform কনফিগারেশনের মূল ফোল্ডারে (সাধারণত `main.tf` বা একটি পৃথক `provider.tf` ফাইল) আপনি কোন ক্লাউড প্রোভাইডার ব্যবহার করছেন এবং তার প্রাথমিক সেটিংস কী হবে, তা Terraform কে জানিয়ে দেন।

```
nano provider.tf
```
**উদাহরণ:**

```hcl
# AWS প্রোভাইডার ব্লক (এই ব্লকেই ক্রেডেনশিয়াল কনফিগারেশনের রেফারেন্স থাকবে)
provider "aws" {
  region = "us-east-1" # আপনার পছন্দের AWS অঞ্চল
  # ক্রেডেনশিয়াল সেটআপ পদ্ধতি নিচে আলোচনা করা হবে
}

# Google Cloud প্রোভাইডার ব্লক
provider "google" {
  project = "your-gcp-project-id" # আপনার GCP প্রজেক্ট আইডি
  region  = "us-central1"        # আপনার পছন্দের GCP অঞ্চল
  # ক্রেডেনশিয়াল সেটআপ পদ্ধতি নিচে আলোচনা করা হবে
}

# Azure প্রোভাইডার ব্লক
provider "azurerm" {
  features {} # Azure প্রোভাইডারের জন্য এটি প্রয়োজন
  # ক্রেডেনশিয়াল সেটআপ পদ্ধতি নিচে আলোচনা করা হবে
}
```

-----

### ক্রেডেনশিয়াল সেটআপ পদ্ধতিসমূহ (Credential Setup Methods)

বিভিন্ন ক্লাউড প্রোভাইডারের জন্য ক্রেডেনশিয়াল সেটআপের সাধারণ পদ্ধতিগুলো নিচে ধাপে ধাপে আলোচনা করা হলো:

-----

#### 1\. AWS (Amazon Web Services) ক্রেডেনশিয়াল সেটআপ

AWS এর সাথে Terraform সংযোগ করার জন্য বেশ কিছু পদ্ধতি রয়েছে। নিরাপত্তা ও ব্যবহারিকতার উপর ভিত্তি করে নিচে ক্রম অনুসারে দেখানো হলো:

**পদ্ধতি A: এনভায়রনমেন্ট ভেরিয়েবল (Recommended for Local Development)**

এই পদ্ধতিটি স্থানীয় ডেভেলপমেন্টের জন্য অত্যন্ত জনপ্রিয় এবং তুলনামূলকভাবে নিরাপদ, কারণ ক্রেডেনশিয়াল ফাইল সিস্টেমে সেভ হয় না।

1.  **IAM User তৈরি:** AWS Console এ যান, একটি IAM User তৈরি করুন এবং তাকে আপনার প্রয়োজনীয় AWS সার্ভিসগুলোর জন্য অনুমতি দিন (উদাহরণস্বরূপ, `AmazonS3FullAccess` বা `AmazonEC2FullAccess` ইত্যাদি)।
2.  **Access Key ও Secret Key পান:** User তৈরির সময় একটি `Access Key ID` এবং `Secret Access Key` পাবেন। **Secret Access Key শুধু একবারই দেখা যাবে, তাই এটি সুরক্ষিতভাবে সেভ করে রাখুন।**
3.  **এনভায়রনমেন্ট ভেরিয়েবল সেট করুন:** আপনার টার্মিনালে এই ভেরিয়েবলগুলো সেট করুন:
    ```bash
    export AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY_ID"
    export AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESSKEY"
    export AWS_DEFAULT_REGION="us-east-1" # আপনার ডিফল্ট অঞ্চল
    ```
      * **স্থায়ী করার জন্য:** এই লাইনগুলো আপনার `.bashrc`, `.zshrc` বা `.profile` ফাইলে যোগ করতে পারেন।
4.  **Terraform কনফিগারেশন:** `provider.tf` ফাইলে শুধু অঞ্চল সেট করুন:
    ```hcl
    provider "aws" {
      region = "us-east-1"
    }
    ```
    Terraform স্বয়ংক্রিয়ভাবে এনভায়রনমেন্ট ভেরিয়েবল থেকে ক্রেডেনশিয়ালস খুঁজে নেবে।
---
**পদ্ধতি B: Shared Credentials File এবং AWS CLI (`aws configure`)**

AWS-এর সাথে Terraform সংযোগের জন্য **AWS Shared Credentials File** (`~/.aws/credentials`) ব্যবহার করা একটি অত্যন্ত সাধারণ ও প্রস্তাবিত পদ্ধতি। এটি স্থানীয় ডেভেলপমেন্টের জন্য আদর্শ এবং একাধিক AWS প্রোফাইল ব্যবস্থাপনার সুবিধা দেয়। **AWS CLI-এর `aws configure` কমান্ডটি এই ফাইলটি তৈরি ও ব্যবস্থাপনার একটি সহজ উপায়।**

### সেটআপ পদ্ধতি: Shared Credentials File ও `aws configure` এর মাধ্যমে

এই পদ্ধতি ব্যবহার করে আপনার AWS অ্যাক্সেস ক্রেডেনশিয়ালস Terraform-এর জন্য উপলব্ধ করতে পারবেন।

1.  **IAM User তৈরি ও অ্যাক্সেস কী পান:**

      * AWS কনসোলে গিয়ে একটি **IAM User** তৈরি করুন।
      * এই User-কে আপনার Terraform কনফিগারেশন যে AWS রিসোর্সগুলো তৈরি বা ম্যানেজ করবে, সেগুলোর জন্য **প্রয়োজনীয় সর্বনিম্ন অনুমতি (Least Privilege)** দিন।
      * User তৈরির সময় একটি `Access Key ID` এবং `Secret Access Key` পাবেন। **Secret Access Key শুধুমাত্র একবারই দেখা যাবে; এটি সুরক্ষিতভাবে সংরক্ষণ করুন।**

2.  **AWS CLI ইন্সটল করুন:**

      * আপনার সিস্টেমে [AWS Command Line Interface (CLI)](http://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) ইন্সটল করা আছে কিনা নিশ্চিত করুন। যদি না থাকে, AWS-এর অফিসিয়াল ডকুমেন্টেশন থেকে ইন্সটল করে নিন।

3.  **ক্রেডেনশিয়ালস কনফিগার করুন (`aws configure`):**

      * আপনার টার্মিনালে `aws configure` কমান্ডটি চালান:

        ```bash
        aws configure
        ```

      * কমান্ডটি আপনাকে ধাপে ধাপে নিচের তথ্যগুলো দিতে বলবে:

          * `AWS Access Key ID [None]:` আপনার **Access Key ID** দিন।
          * `AWS Secret Access Key [None]:` আপনার **Secret Access Key** দিন।
          * `Default region name [None]:` আপনার পছন্দের **AWS অঞ্চল** দিন (যেমন, `us-east-1`, `ap-southeast-1`)।
          * `Default output format [None]:` এখানে `json` দিতে পারেন অথবা ফাঁকা রাখতে পারেন।

      * এই কমান্ডটি স্বয়ংক্রিয়ভাবে আপনার হোম ডিরেক্টরিতে (`~/.aws/`) দুটি ফাইল তৈরি বা আপডেট করবে:

          * `credentials` ফাইল (`~/.aws/credentials`): আপনার Access Key ID এবং Secret Access Key এখানে জমা হবে।
          * `config` ফাইল (`~/.aws/config`): আপনার ডিফল্ট অঞ্চল এবং অন্যান্য কনফিগারেশন এখানে জমা হবে।

      * **একাধিক প্রোফাইল ব্যবহারের জন্য (ঐচ্ছিক):**
        যদি আপনি `dev`, `prod` এর মতো একাধিক AWS অ্যাকাউন্ট বা প্রোফাইল ম্যানেজ করতে চান, তাহলে `aws configure` এর সাথে `--profile` ফ্ল্যাগ ব্যবহার করতে পারেন:

        ```bash
        aws configure --profile prod
        ```

        এটি আপনার `~/.aws/credentials` এবং `~/.aws/config` ফাইলে `[prod]` নামে একটি নতুন প্রোফাইল সেকশন তৈরি করবে।

4.  **Terraform প্রোভাইডার কনফিগারেশন:**

      * আপনার Terraform প্রজেক্টের `provider.tf` ফাইলে AWS প্রোভাইডারকে কনফিগার করুন। Terraform স্বয়ংক্রিয়ভাবে `~/.aws/credentials` এবং `~/.aws/config` ফাইল থেকে আপনার ক্রেডেনশিয়ালস এবং অঞ্চল খুঁজে নেবে।

    ```hcl
    # provider.tf
    provider "aws" {
      # Terraform স্বয়ংক্রিয়ভাবে ~/.aws/credentials এবং ~/.aws/config থেকে ক্রেডেনশিয়ালস নেবে
      # যদি আপনি একটি নির্দিষ্ট প্রোফাইল ব্যবহার করতে চান, তাহলে তা উল্লেখ করুন:
      # profile = "prod" # যেমন, আপনি যদি 'aws configure --profile prod' ব্যবহার করে থাকেন

      region  = "us-east-1" # ~/.aws/config থেকে ডিফল্ট অঞ্চল নেবে, অথবা এখানে ওভাররাইড করতে পারেন
    }
    ```
---
**পদ্ধতি C: IAM Role (Recommended for Production Workloads on EC2/ECS/EKS)**

Terraform যদি একটি AWS EC2 ইনস্ট্যান্স, ECS টাস্ক বা EKS পড-এর মতো AWS সার্ভিসে চলে, তাহলে IAM রোল ব্যবহার করা সবচেয়ে নিরাপদ এবং প্রস্তাবিত পদ্ধতি। এক্ষেত্রে কোনো ক্রেডেনশিয়াল (key/secret) ম্যানুয়ালি সরবরাহ করার প্রয়োজন হয় না।

1.  **IAM Role তৈরি:** AWS Console এ যান, একটি IAM Role তৈরি করুন।
      * `Type of trusted entity` হিসেবে `AWS service` নির্বাচন করুন (যেমন `EC2`).
      * আপনার প্রয়োজনীয় AWS সার্ভিসগুলোর জন্য অনুমতি দিন (যেমন, S3, EC2, VPC পরিচালনার জন্য প্রয়োজনীয় পলিসি)।
2.  **রোলকে রিসোর্সে অ্যাসাইন করুন:** EC2 ইনস্ট্যান্স তৈরির সময় বা ECS/EKS এর টাস্ক ডেফিনিশনে এই IAM রোলটি অ্যাসাইন করুন।
3.  **Terraform কনফিগারেশন:** `provider.tf` ফাইলে কোনো ক্রেডেনশিয়াল উল্লেখ করার প্রয়োজন নেই:
    ```hcl
    provider "aws" {
      region = "us-east-1"
      # এখানে কোনো access_key বা secret_key থাকবে না
    }
    ```
    Terraform স্বয়ংক্রিয়ভাবে ইনস্ট্যান্স/টাস্কের IAM রোল থেকে অস্থায়ী ক্রেডেনশিয়ালস পেয়ে যাবে।
---
**পদ্ধতি D: হার্ডকোডিং (NOT Recommended for Production)**

এই পদ্ধতিটি শুধুমাত্র শেখার উদ্দেশ্যে বা অত্যন্ত ছোট, অ-সংবেদনশীল প্রজেক্টের জন্য ব্যবহার করা যেতে পারে। **প্রোডাকশন পরিবেশে বা পাবলিক রিপোজিটরিতে কখনোই ক্রেডেনশিয়াল হার্ডকোড করবেন না\!**

1.  **IAM User ও Key তৈরি:** পদ্ধতি A এর ধাপ 1 ও 2 অনুসরণ করুন।
2.  **`provider.tf` ফাইলে সরাসরি ক্রেডেনশিয়ালস দিন:**
```
nano provider.tf
```
    ```
    provider "aws" {
      region     = "us-east-1"
      access_key = "YOUR_ACCESS_KEY_ID"
      secret_key = "YOUR_SECRET_ACCESS_KEY"
    }
    ```

-----

#### 2\. Google Cloud Platform (GCP) ক্রেডেনশিয়াল সেটআপ

GCP এর সাথে Terraform সংযোগের জন্য প্রধানত সার্ভিস অ্যাকাউন্ট ক্রেডেনশিয়ালস ব্যবহার করা হয়।

**পদ্ধতি A: সার্ভিস অ্যাকাউন্ট কী ফাইল + এনভায়রনমেন্ট ভেরিয়েবল (Recommended)**

এই পদ্ধতিটি ডেভেলপমেন্ট এবং CI/CD পাইপলাইনে ব্যবহারের জন্য প্রস্তাবিত।

1.  **সার্ভিস অ্যাকাউন্ট তৈরি:**
      * GCP Console এ যান।
      * `IAM & Admin` -\> `Service Accounts` এ যান।
      * একটি নতুন সার্ভিস অ্যাকাউন্ট তৈরি করুন এবং আপনার প্রয়োজনীয় পারমিশন দিন (যেমন `Editor`, অথবা নির্দিষ্ট রিসোর্সের জন্য কাস্টম রোল)।
2.  **কী ফাইল তৈরি ও ডাউনলোড:**
      * সার্ভিস অ্যাকাউন্টটি তৈরি হওয়ার পর, এর অধীনে একটি নতুন JSON Key তৈরি করুন এবং ডাউনলোড করুন। এই ফাইলটিতে আপনার ক্রেডেনশিয়ালস থাকবে।
3.  **এনভায়রনমেন্ট ভেরিয়েবল সেট করুন:**
      * আপনার টার্মিনালে `GOOGLE_APPLICATION_CREDENTIALS` এনভায়রনমেন্ট ভেরিয়েবল সেট করুন, যা ডাউনলোড করা JSON কী ফাইলের পাথের দিকে নির্দেশ করবে:
        ```bash
        export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/service-account-key.json"
        ```
      * Terraform স্বয়ংক্রিয়ভাবে এই ভেরিয়েবল থেকে ক্রেডেনশিয়ালস খুঁজে নেবে।
4.  **Terraform কনফিগারেশন:** `provider.tf` ফাইলে শুধু প্রজেক্ট আইডি এবং অঞ্চল সেট করুন:
    ```hcl
    provider "google" {
      project = "your-gcp-project-id"
      region  = "us-central1"
    }
    ```

**পদ্ধতি B: `gcloud auth application-default login` (Local Development Only)**

এটি স্থানীয় ডেভেলপমেন্টের জন্য সুবিধাজনক, কারণ এটি আপনার ব্যক্তিগত GCP ইউজার অ্যাকাউন্ট ব্যবহার করে।

1.  **gcloud CLI ইন্সটল করুন:** আপনার সিস্টেমে Google Cloud CLI ইন্সটল করুন।
2.  **লগইন করুন:** টার্মিনালে এই কমান্ডটি চালান:
    ```bash
    gcloud auth application-default login
    ```
      * এটি আপনাকে একটি ব্রাউজারে সাইন ইন করতে বলবে এবং আপনার ইউজার ক্রেডেনশিয়ালস দিয়ে অ্যাপ্লিকেশন ডিফল্ট ক্রেডেনশিয়ালস তৈরি করবে।
3.  **Terraform কনফিগারেশন:** পদ্ধতি A এর মতো `provider.tf` ফাইল সেটআপ করুন।

**পদ্ধতি C: হার্ডকোডিং (NOT Recommended for Production)**

পুনরায়, এটি শুধুমাত্র শেখার উদ্দেশ্যে। প্রোডাকশন পরিবেশে এটি ব্যবহার করবেন না।

1.  **সার্ভিস অ্যাকাউন্ট কী ফাইল ডাউনলোড করুন (JSON)।**
2.  **`provider.tf` ফাইলে সরাসরি পাথ উল্লেখ করুন:**
    ```hcl
    provider "google" {
      project     = "your-gcp-project-id"
      region      = "us-central1"
      credentials = file("/path/to/your/service-account-key.json")
    }
    ```

-----

#### 3\. Azure (Microsoft Azure) ক্রেডেনশিয়াল সেটআপ

Azure এর সাথে Terraform সংযোগের জন্য বিভিন্ন প্রমাণীকরণ পদ্ধতি রয়েছে। সার্ভিস প্রিন্সিপাল (Service Principal) ব্যবহার করা সবচেয়ে সাধারণ এবং প্রস্তাবিত পদ্ধতি।

**পদ্ধতি A: সার্ভিস প্রিন্সিপাল (Service Principal) - এনভায়রনমেন্ট ভেরিয়েবল (Recommended)**

এই পদ্ধতিটি CI/CD পাইপলাইন এবং প্রোডাকশন পরিবেশের জন্য প্রস্তাবিত।

1.  **সার্ভিস প্রিন্সিপাল তৈরি:** Azure CLI বা Azure Portal ব্যবহার করে একটি সার্ভিস প্রিন্সিপাল তৈরি করুন এবং তাকে আপনার প্রয়োজনীয় অনুমতি দিন।
    ```bash
    az ad sp create-for-rbac --name "terraform-sp" --role "Contributor" --scopes "/subscriptions/YOUR_SUBSCRIPTION_ID"
    ```
      * এটি আপনাকে `appId` (Client ID), `password` (Client Secret), `tenant` (Tenant ID), এবং `subscription` (Subscription ID) সহ একটি JSON আউটপুট দেবে।
2.  **এনভায়রনমেন্ট ভেরিয়েবল সেট করুন:** এই ভ্যালুগুলো আপনার টার্মিনালে এনভায়রনমেন্ট ভেরিয়েবল হিসেবে সেট করুন:
    ```bash
    export ARM_CLIENT_ID="<appId>"
    export ARM_CLIENT_SECRET="<password>"
    export ARM_SUBSCRIPTION_ID="<subscription>"
    export ARM_TENANT_ID="<tenant>"
    ```
3.  **Terraform কনফিগারেশন:** `provider.tf` ফাইলে শুধু `features {}` ব্লক সেট করুন:
    ```hcl
    provider "azurerm" {
      features {}
      # Terraform স্বয়ংক্রিয়ভাবে এনভায়রনমেন্ট ভেরিয়েবল থেকে ক্রেডেনশিয়ালস খুঁজে নেবে
    }
    ```

**পদ্ধতি B: Azure CLI লগইন (`az login`) (Local Development Only)**

স্থানীয় ডেভেলপমেন্টের জন্য এটি একটি সহজ উপায়, আপনার Azure CLI লগইন সেশন ব্যবহার করে।

1.  **Azure CLI ইন্সটল করুন:** আপনার সিস্টেমে Azure Command Line Interface ইন্সটল করুন।
2.  **লগইন করুন:** টার্মিনালে এই কমান্ডটি চালান:
    ```bash
    az login
    ```
      * এটি আপনাকে একটি ব্রাউজারে লগইন করতে বলবে এবং আপনার Azure অ্যাকাউন্ট দিয়ে প্রমাণীকরণ করবে।
      * আপনার যদি একাধিক সাবস্ক্রিপশন থাকে, তবে একটি নির্দিষ্ট সাবস্ক্রিপশন নির্বাচন করুন: `az account set --subscription "YOUR_SUBSCRIPTION_NAME_OR_ID"`
3.  **Terraform কনফিগারেশন:** পদ্ধতি A এর মতো `provider.tf` ফাইল সেটআপ করুন।

-----

#### 4\. OpenStack ক্রেডেনশিয়াল সেটআপ

OpenStack এর সাথে সংযোগ স্থাপনের জন্য সাধারণত RC ফাইল (Run Commands file) ব্যবহার করা হয়।

**পদ্ধতি A: OpenStack RC ফাইল (Recommended)**

1.  **RC ফাইল ডাউনলোড করুন:** আপনার OpenStack ক্লাউডের ড্যাশবোর্ড থেকে আপনার প্রোফাইল সেটিংসের অধীনে `API Access` বা `OpenStack RC File` অপশন থেকে `.rc` ফাইলটি ডাউনলোড করুন। এর নাম সাধারণত `your_project_name-openrc.sh` এর মতো হয়।
2.  **RC ফাইল সোর্স করুন:** আপনার টার্মিনালে এই ফাইলটি সোর্স করুন:
    ```bash
    source /path/to/your/your_project_name-openrc.sh
    ```
      * এটি আপনার টার্মিনালে প্রয়োজনীয় এনভায়রনমেন্ট ভেরিয়েবল (যেমন `OS_USERNAME`, `OS_PASSWORD`, `OS_AUTH_URL`, `OS_REGION_NAME`, `OS_PROJECT_NAME`) সেট করবে।
      * আপনাকে আপনার OpenStack পাসওয়ার্ড ইনপুট দিতে হতে পারে।
3.  **Terraform কনফিগারেশন:** `provider.tf` ফাইলে এই এনভায়রনমেন্ট ভেরিয়েবলগুলো রেফারেন্স করুন:
    ```hcl
    provider "openstack" {
      user_name   = "${OS_USERNAME}"
      tenant_name = "${OS_PROJECT_NAME}" # OpenStack এর ভার্সন ভেদে OS_TENANT_NAME বা OS_PROJECT_NAME হতে পারে
      password    = "${OS_PASSWORD}"
      auth_url    = "${OS_AUTH_URL}"
      region      = "${OS_REGION_NAME}"
    }
    ```

**পদ্ধতি B: হার্ডকোডিং (NOT Recommended for Production)**

শিখন বা টেস্টিং এর জন্য।

```hcl
provider "openstack" {
  user_name   = "your_openstack_username"
  tenant_name = "your_openstack_project_name"
  password    = "your_openstack_password"
  auth_url    = "http://your-openstack-auth-url:5000/v3"
  region      = "RegionOne"
}
```

-----

### অতিরিক্ত টিপস (Additional Tips)

  * **সংবেদনশীল ডেটা সুরক্ষিত করুন:** ক্রেডেনশিয়ালস বা অন্যান্য সংবেদনশীল ডেটা কখনোই Git রিপোজিটরিতে পুশ করবেন না। `.gitignore` ফাইল ব্যবহার করে এগুলোকে ইগনোর করুন।
  * **HashiCorp Vault:** প্রোডাকশন পরিবেশে ক্রেডেনশিয়ালস সুরক্ষিতভাবে পরিচালনার জন্য HashiCorp Vault একটি অত্যন্ত শক্তিশালী টুল। Terraform Vault এর সাথে ইন্টিগ্রেট করতে পারে।
  * **Least Privilege Principle:** আপনার ক্লাউড ক্রেডেনশিয়ালসকে শুধুমাত্র প্রয়োজনীয় সর্বনিম্ন অনুমতি দিন। অপ্রয়োজনীয় উচ্চ অনুমতি নিরাপত্তা ঝুঁকি বাড়ায়।
  * **Terraform Cloud/Enterprise:** HashiCorp এর নিজস্ব SaaS/Enterprise সলিউশনগুলো সিক্রেট ম্যানেজমেন্ট, স্টেট ম্যানেজমেন্ট এবং সহযোগিতা ফিচারগুলো সহজ করে।

এই গাইডলাইনগুলো আপনাকে বিভিন্ন ক্লাউড প্রোভাইডারের সাথে Terraform ক্রেডেনশিয়াল সেটআপ করার জন্য একটি স্পষ্ট এবং কার্যকরী পথ দেখাবে।
-----

## 👣 Terraform এর প্রাথমিক ব্যবহার: প্রথম পদক্ষেপ (Basic Usage of Terraform: First Steps)

Terraform এর সাথে আপনার যাত্রা শুরু করার জন্য কিছু মৌলিক ধারণা জেনে রাখা জরুরি।

### রিসোর্স তৈরি: আপনার প্রথম ইনফ্রা (Creating Resources: Your First Infra)

Terraform এ ইনফ্রাস্ট্রাকচার কম্পোনেন্টগুলোকে "রিসোর্স" বলা হয়। প্রতিটি `resource` ব্লকে আপনি নির্দিষ্ট টাইপের একটি রিসোর্স (যেমন `aws_instance`, `google_compute_instance`, `aws_s3_bucket`) এবং তার প্রয়োজনীয় আর্গুমেন্টগুলো সংজ্ঞায়িত করেন।

**উদাহরণ: একটি সাধারণ AWS S3 Bucket তৈরি**

`main.tf`

```hcl
# AWS প্রোভাইডার কনফিগারেশন
provider "aws" {
  region = "us-east-1" # আপনার পছন্দের অঞ্চল
}

# একটি S3 বাকেট রিসোর্স সংজ্ঞায়িত করা হচ্ছে
resource "aws_s3_bucket" "my_demo_bucket" {
  bucket = "my-unique-terraform-demo-bucket-2025-v2" # বাকেটের জন্য একটি অনন্য নাম দিন
  acl    = "private" # অ্যাক্সেস কন্ট্রোল লিস্ট সেট করুন (যেমন private, public-read)

  tags = {
    Name        = "Terraform Demo Bucket"
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}
```

**কিভাবে চালাবেন:**

```bash
terraform init       # প্রোভাইডার ইনিশিয়ালাইজ করুন
terraform plan       # কী পরিবর্তন হবে তা দেখুন
terraform apply      # পরিবর্তনগুলো প্রয়োগ করুন (প্রম্পটে 'yes' টাইপ করুন)
```

### ভেরিয়েবল: ইনফ্রা ডাইনামিক করুন (Variables: Make Your Infra Dynamic)

ভেরিয়েবল ব্যবহার করে আপনার Terraform কনফিগারেশনকে আরও ফ্লেক্সিবল এবং পুনরায় ব্যবহারযোগ্য করতে পারেন। এটি আপনাকে হার্ডকোডেড ভ্যালু এড়াতে সাহায্য করে।

`variables.tf` (ভেরিয়েবলগুলো এখানে সংজ্ঞায়িত করুন)

```hcl
variable "bucket_prefix" {
  description = "A prefix for the S3 bucket name to ensure uniqueness."
  type        = string
  default     = "my-app-bucket" # ডিফল্ট ভ্যালু
}

variable "aws_region" {
  description = "The AWS region where resources will be deployed."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment name (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}
```

`main.tf` (ভেরিয়েবল ব্যবহার করুন)

```hcl
resource "random_string" "unique_suffix" {
  length  = 8
  special = false
  upper   = false
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.bucket_prefix}-${random_string.unique_suffix.result}" # ভেরিয়েবল ও লোকাল ভ্যালু ব্যবহার
  acl    = "private"

  tags = {
    Name        = "${var.bucket_prefix}-${var.environment}"
    Environment = var.environment
  }
}
```

**ভেরিয়েবলে ইনপুট দেওয়ার পদ্ধতি:**

  * **কমান্ড লাইনে:** `terraform apply -var="environment=prod"`
  * **`.tfvars` ফাইল:** `terraform.tfvars` নামে একটি ফাইল তৈরি করে তাতে ভেরিয়েবল ভ্যালু দিন:
    ```
    bucket_prefix = "production-app"
    aws_region = "us-west-2"
    environment = "prod"
    ```
    তারপর `terraform apply` চালান, Terraform স্বয়ংক্রিয়ভাবে `terraform.tfvars` ফাইলটি পড়বে।
  * **এনভায়রনমেন্ট ভেরিয়েবল:** `export TF_VAR_environment="staging"`

### আউটপুট: গুরুত্বপূর্ণ তথ্য সংগ্রহ করুন (Outputs: Collect Important Information)

যখন Terraform ইনফ্রাস্ট্রাকচার তৈরি করে, তখন আপনি সেই রিসোর্সগুলোর কিছু তথ্য (যেমন IP অ্যাড্রেস, DNS নাম, ARN ইত্যাদি) পেতে চাইতে পারেন। `output` ব্লক ব্যবহার করে এটি করা যায়।

`outputs.tf`

```hcl
output "s3_bucket_name" {
  description = "The unique name of the S3 bucket created."
  value       = aws_s3_bucket.app_bucket.bucket
}

output "s3_bucket_arn" {
  description = "The ARN (Amazon Resource Name) of the S3 bucket."
  value       = aws_s3_bucket.app_bucket.arn
}
```

`terraform apply` সফলভাবে শেষ হওয়ার পর, এই আউটপুটগুলো টার্মিনালে প্রদর্শিত হবে।

-----

## 🚀 Terraform এর উন্নত ব্যবহার: পেশাদার কৌশল (Advanced Usage of Terraform: Professional Techniques)

আপনার Terraform কনফিগারেশনগুলোকে আরও শক্তিশালী, স্কেলযোগ্য এবং রক্ষণাবেক্ষণযোগ্য করতে এই উন্নত ফিচারগুলো ব্যবহার করুন।

### মডিউল: আপনার ইনফ্রা লাইব্রেরি (Modules: Your Infra Library)

**মডিউল** হলো Terraform কনফিগারেশনের একটি পুনঃব্যবহারযোগ্য, এনক্যাপসুলেটেড ইউনিট। এগুলি আপনাকে ইনফ্রাস্ট্রাকচারের অংশগুলোকে অ্যাবস্ট্রাক্ট করতে এবং সেগুলোকে আপনার প্রজেক্টের বিভিন্ন জায়গায় অথবা বিভিন্ন প্রজেক্টে বারবার ব্যবহার করতে দেয়।

**কেন মডিউল ব্যবহার করবেন?**

  * **পুনঃব্যবহারযোগ্যতা (Reusability):** একটি সার্ভার, VPC, বা ডাটাবেজ প্যাটার্ন একবার সংজ্ঞায়িত করে বারবার ব্যবহার করুন।
  * **সংগঠন (Organization):** জটিল কনফিগারেশনকে ছোট, পরিচালনাযোগ্য অংশে ভাগ করুন।
  * **কনসিস্টেন্সি (Consistency):** প্রতিটি পরিবেশে একই ইনফ্রাস্ট্রাকচার কম্পোনেন্ট ডিপ্লয় করা নিশ্চিত করুন।
  * **মানসম্মতকরণ (Standardization):** আপনার টিম জুড়ে ইনফ্রাস্ট্রাকচার তৈরির প্রক্রিয়াকে মানসম্মত করুন।

**মডিউল ব্যবহার করার উদাহরণ:**

**মডিউলের সংজ্ঞা (যেমন: `modules/ec2-instance/` ফোল্ডারে):**

`modules/ec2-instance/main.tf`

```hcl
resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = var.security_group_ids # security_group_ids এ পরিবর্তন

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}
```

`modules/ec2-instance/variables.tf`

```hcl
variable "ami_id" { type = string }
variable "instance_type" { type = string }
variable "subnet_id" { type = string }
variable "security_group_ids" { type = list(string) }
variable "instance_name" { type = string }
variable "environment" { type = string }
```

`modules/ec2-instance/outputs.tf`

```hcl
output "instance_id" { value = aws_instance.app_server.id }
output "instance_public_ip" { value = aws_instance.app_server.public_ip }
```

**মডিউল ব্যবহার (`root` কনফিগারেশনে, যেমন `main.tf`):**

```hcl
# EC2 মডিউল ব্যবহার করে একটি ওয়েব সার্ভার তৈরি করুন
module "web_server" {
  source = "./modules/ec2-instance" # স্থানীয় পাথ, GitHub রিপো বা Terraform Registry থেকেও হতে পারে

  ami_id           = "ami-0abcdef1234567890" # আপনার AWS AMI আইডি
  instance_type    = "t2.micro"
  subnet_id        = "subnet-0abcdef1234567890" # আপনার পাবলিক সাবনেট আইডি
  security_group_ids = ["sg-0abcdef1234567890"] # আপনার ওয়েব সিকিউরিটি গ্রুপ আইডি
  instance_name    = "WebServer-01"
  environment      = "dev"
}

# আরেকটি সার্ভার তৈরি করুন (যেমন একটি ডেটাবেজ সার্ভার)
module "db_server" {
  source = "./modules/ec2-instance"

  ami_id           = "ami-0abcdef1234567891" # অন্য AMI হতে পারে
  instance_type    = "t2.medium"
  subnet_id        = "subnet-0abcdef1234567891" # আপনার প্রাইভেট সাবনেট আইডি
  security_group_ids = ["sg-0abcdef1234567891"] # আপনার DB সিকিউরিটি গ্রুপ আইডি
  instance_name    = "DatabaseServer-01"
  environment      = "dev"
}
```

### ওয়ার্কস্পেস: পরিবেশ বিচ্ছিন্ন করুন (Workspaces: Isolate Environments)

**Terraform ওয়ার্কস্পেস** আপনাকে একই Terraform কনফিগারেশন ফাইল ব্যবহার করে একাধিক স্বতন্ত্র স্টেট তৈরি করতে দেয়। এটি সাধারণত ডেভেলপমেন্ট, স্টেজিং এবং প্রোডাকশন পরিবেশের মতো ভিন্ন পরিবেশ ব্যবস্থাপনার জন্য ব্যবহৃত হয়, যেখানে প্রতিটি পরিবেশের নিজস্ব স্টেট ফাইল থাকে।

```bash
# একটি নতুন ওয়ার্কস্পেস তৈরি করুন
terraform workspace new dev

# অন্য একটি নতুন ওয়ার্কস্পেস তৈরি করুন
terraform workspace new staging

# বিদ্যমান ওয়ার্কস্পেসগুলোর তালিকা দেখুন
terraform workspace list

# একটি নির্দিষ্ট ওয়ার্কস্পেসে স্যুইচ করুন
terraform workspace select dev

# বর্তমানে কোন ওয়ার্কস্পেসে আছেন তা দেখুন
terraform workspace show

# একটি ওয়ার্কস্পেস মুছে ফেলুন (সাবধান, এটি সেই ওয়ার্কস্পেসের স্টেট মুছে দেবে!)
terraform workspace delete staging
```

### রিমোট স্টেট: টিমওয়ার্কের চাবিকাঠি (Remote State: The Key to Teamwork)

ডিফল্টভাবে, Terraform তার স্টেট ফাইল (`terraform.tfstate`) স্থানীয়ভাবে সংরক্ষণ করে। কিন্তু দলগত পরিবেশে বা নির্ভরযোগ্যতার জন্য, **রিমোট স্টেট** ব্যবহার করা অত্যাবশ্যক। রিমোট স্টেট আপনার স্টেট ফাইলটিকে একটি শেয়ার্ড, সুরক্ষিত স্থানে সংরক্ষণ করে (যেমন S3, Azure Blob Storage, GCP Cloud Storage, HashiCorp Consul বা Terraform Cloud)।

**কেন রিমোট স্টেট ব্যবহার করবেন?**

  * **সহযোগিতা:** একাধিক টিম মেম্বার একই স্টেট ফাইলের উপর নিরাপদে কাজ করতে পারে।
  * **সুরক্ষা:** স্টেট ফাইল স্থানীয় মেশিনে হারানোর ঝুঁকি কমে যায়।
  * **স্টেট লকিং (State Locking):** একাধিক ব্যক্তি একই সময়ে স্টেট ফাইলে পরিবর্তন করার চেষ্টা করলে সমস্যা এড়াতে এটি লক করে।
  * **সংস্করণ নিয়ন্ত্রণ:** কিছু রিমোট স্টেট ব্যাকএন্ড স্টেটের সংস্করণ নিয়ন্ত্রণ সমর্থন করে।

**উদাহরণ: S3 ব্যাকএন্ড কনফিগারেশন (প্রস্তাবিত)**

`backend.tf` (বা আপনার `main.tf` এ `terraform` ব্লক):

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-unique-123" # আপনার একটি অনন্য S3 বাকেট নাম দিন
    key            = "dev/my-app/terraform.tfstate"          # স্টেটের জন্য পাথ
    region         = "us-east-1"
    encrypt        = true                                   # স্টেট এনক্রিপ্ট করুন
    dynamodb_table = "terraform-lock-table"                 # স্টেট লকিং এর জন্য DynamoDB টেবিল
  }
}
```

**গুরুত্বপূর্ণ:** আপনার S3 বাকেট এবং DynamoDB টেবিলটি Terraform দ্বারা পরিচালিত হওয়া উচিত নয়। এগুলো ম্যানুয়ালি বা অন্য কোনো Terraform কনফিগারেশন থেকে তৈরি করা উচিত।

`terraform init` চালানোর সময়, Terraform আপনাকে রিমোট ব্যাকএন্ড সেটআপ করতে বলবে।

### ডেটা সোর্স: বিদ্যমান রিসোর্স ব্যবহার করুন (Data Sources: Utilize Existing Resources)

**ডেটা সোর্স** আপনাকে Terraform কনফিগারেশনের বাইরে থাকা বা Terraform দ্বারা পূর্বে তৈরি করা বিদ্যমান ইনফ্রাস্ট্রাকচার রিসোর্স থেকে তথ্য রিড করতে দেয়। এটি কোডকে আরও ডাইনামিক এবং পুনঃব্যবহারযোগ্য করে তোলে।

**উদাহরণ: একটি বিদ্যমান VPC আইডি খুঁজে বের করা**

```hcl
# ডেটা সোর্স ব্যবহার করে একটি বিদ্যমান VPC খুঁজুন
data "aws_vpc" "existing_vpc" {
  filter {
    name   = "tag:Name"
    values = ["MyExistingApplicationVPC"] # আপনার VPC এর Name ট্যাগ
  }
  # অথবা আপনি id, cidr_block ইত্যাদি দ্বারাও খুঁজতে পারেন
}

# এই VPC এর আইডি ব্যবহার করে একটি নতুন সাবনেট তৈরি করুন
resource "aws_subnet" "new_private_subnet" {
  vpc_id            = data.aws_vpc.existing_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "NewPrivateSubnet"
  }
}

output "existing_vpc_id" {
  description = "The ID of the existing VPC."
  value       = data.aws_vpc.existing_vpc.id
}
```

### লুপ এবং কন্ডিশন: স্মার্ট ইনফ্রা কোডিং (Loops and Conditionals: Smart Infra Coding)

Terraform এর বিল্ট-ইন লুপ এবং কন্ডিশনাল এক্সপ্রেশন আপনাকে পুনরাবৃত্তিমূলক কোড এড়াতে এবং আরও স্মার্ট কনফিগারেশন লিখতে সাহায্য করে।

  * **`count` মেটা-আর্গুমেন্ট:** একই ধরণের একাধিক রিসোর্স তৈরি করতে।

    ```hcl
    resource "aws_instance" "web_servers" {
      count         = 3 # তিনটি EC2 ইনস্ট্যান্স তৈরি করবে
      ami           = "ami-0abcdef1234567890"
      instance_type = "t2.micro"
      tags = {
        Name = "WebServer-${count.index}" # প্রতিটি ইনস্ট্যান্সের জন্য অনন্য নাম
      }
    }
    ```

  * **`for_each` মেটা-আর্গুমেন্ট:** একটি ম্যাপ বা সেট থেকে প্রতিটি আইটেমের জন্য একাধিক রিসোর্স তৈরি করতে, যা `count` এর চেয়ে বেশি ফ্লেক্সিবল।

    ```hcl
    variable "environments" {
      type = map(object({
        instance_type = string
        instance_ami  = string
      }))
      default = {
        dev = {
          instance_type = "t2.micro"
          instance_ami  = "ami-0abcdef1234567890"
        }
        prod = {
          instance_type = "t2.medium"
          instance_ami  = "ami-0abcdef1234567891"
        }
      }
    }

    resource "aws_instance" "env_servers" {
      for_each      = var.environments
      ami           = each.value.instance_ami
      instance_type = each.value.instance_type
      tags = {
        Name        = "AppServer-${each.key}"
        Environment = each.key
      }
    }
    ```

  * **কন্ডিশনাল এক্সপ্রেশন (`condition ? true_val : false_val`):** একটি শর্তের উপর ভিত্তি করে ভিন্ন ভ্যালু অ্যাসাইন করতে।

    ```hcl
    variable "is_production" {
      type    = bool
      default = false
    }

    resource "aws_instance" "conditional_server" {
      # যদি is_production true হয়, তাহলে 1টি ইনস্ট্যান্স তৈরি হবে, অন্যথায় 0টি।
      count         = var.is_production ? 1 : 0
      ami           = "ami-0abcdef1234567890"
      instance_type = var.is_production ? "t2.large" : "t2.micro" # পরিবেশের উপর ভিত্তি করে ইনস্ট্যান্স টাইপ
      tags = {
        Name = var.is_production ? "ProdServer" : "DevServer"
      }
    }
    ```

-----

## 🏗️ Terraform এবং AWS এর বাস্তব প্রজেক্ট: হাতে-কলমে শিখুন\! (Real-world Projects with Terraform and AWS: Learn Hands-On\!)

এখানে AWS এর সাথে Terraform ব্যবহার করে কিছু বাস্তব প্রজেক্টের উদাহরণ দেওয়া হলো, যা আপনার Terraform দক্ষতা বৃদ্ধিতে সাহায্য করবে।

### প্রথম প্রজেক্ট: একটি EC2 ইনস্ট্যান্স (First Project: An EC2 Instance)

এটি Terraform দিয়ে আপনার প্রথম ক্লাউড রিসোর্স তৈরির একটি মৌলিক উদাহরণ।

**লক্ষ্য:** একটি একক AWS EC2 ইনস্ট্যান্স স্থাপন করা।

**ফাইল স্ট্রাকচার:**

```
ec2-project/
├── main.tf
├── variables.tf
└── outputs.tf
```

**`ec2-project/variables.tf`:**

```hcl
variable "region" {
  description = "AWS region for resource deployment."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance (e.g., Ubuntu 20.04 LTS)."
  type        = string
  default     = "ami-0abcdef1234567890" # আপনার অঞ্চলের জন্য একটি বৈধ AMI আইডি দিন
}

variable "instance_type" {
  description = "The instance type for the EC2 instance (e.g., t2.micro)."
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance."
  type        = string
  default     = "MyFirstTerraformEC2"
}
```

**`ec2-project/main.tf`:**

```hcl
provider "aws" {
  region = var.region
}

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  # একটি key_pair যোগ করতে পারেন যদি SSH access চান
  # key_name = "your-ssh-key-name"

  tags = {
    Name = var.instance_name
  }
}
```

**`ec2-project/outputs.tf`:**

```hcl
output "instance_public_ip" {
  description = "The public IP address of the deployed EC2 instance."
  value       = aws_instance.web_server.public_ip
}

output "instance_id" {
  description = "The ID of the deployed EC2 instance."
  value       = aws_instance.web_server.id
}
```

**চালানোর ধাপ:**

1.  `cd ec2-project`
2.  `terraform init`
3.  `terraform plan`
4.  `terraform apply` (প্রম্পটে `yes` টাইপ করুন)
5.  কাজ শেষে, `terraform destroy` চালিয়ে রিসোর্স মুছে ফেলতে পারেন।

### মাঝারি প্রজেক্ট: VPC, Subnet, Security Group সহ EC2 (Medium Project: EC2 with VPC, Subnet, Security Group)

এই প্রজেক্টটি একটি কাস্টম নেটওয়ার্ক এনভায়রনমেন্টের মধ্যে একটি EC2 ইনস্ট্যান্স স্থাপন করবে, যা আরও বাস্তবসম্মত।

**লক্ষ্য:** একটি কাস্টম VPC, পাবলিক সাবনেট, ইন্টারনেট গেটওয়ে, রাউট টেবিল এবং একটি সিকিউরিটি গ্রুপ তৈরি করে তার মধ্যে একটি EC2 ইনস্ট্যান্স স্থাপন করা।

**ফাইল স্ট্রাকচার:**

```
vpc-ec2-project/
├── main.tf
├── variables.tf
└── outputs.tf
```

**(এখানে পূর্বের মতো `variables.tf`, `main.tf`, এবং `outputs.tf` এর সম্পূর্ণ কোড থাকবে, যা README এর পূর্ববর্তী অংশে উদাহরণ হিসেবে দেওয়া হয়েছে। পাঠক সেখান থেকে কপি করতে পারবেন।)**

**গুরুত্বপূর্ণ পয়েন্ট:**

  * **`aws_vpc`:** আপনার কাস্টম নেটওয়ার্কের ভিত্তি।
  * **`aws_internet_gateway`:** আপনার VPC কে ইন্টারনেটের সাথে সংযুক্ত করে।
  * **`aws_subnet`:** আপনার VPC কে ছোট ছোট নেটওয়ার্কে বিভক্ত করে।
  * **`aws_route_table` এবং `aws_route_table_association`:** ইন্টারনেট গেটওয়ের মাধ্যমে পাবলিক সাবনেট থেকে ইন্টারনেট ট্র্যাফিক রাউট করার জন্য।
  * **`aws_security_group`:** আপনার EC2 ইনস্ট্যান্সে ইনবাউন্ড/আউটবাউন্ড ট্র্যাফিক নিয়ন্ত্রণ করে।
  * **`aws_instance`:** অবশেষে আপনার ওয়েব সার্ভার হোস্ট করার জন্য EC2 ইনস্ট্যান্স।

**চালানোর ধাপ:**

1.  `cd vpc-ec2-project`
2.  `terraform init`
3.  `terraform plan`
4.  `terraform apply`
5.  কাজ শেষে, `terraform destroy` চালিয়ে সমস্ত রিসোর্স মুছে ফেলুন।

### বৃহৎ প্রজেক্ট: একটি পূর্ণাঙ্গ ওয়েব অ্যাপ্লিকেশন আর্কিটেকচার (Large Project: A Complete Web Application Architecture)

এটি একটি প্রোডাকশন-রেডি, মাল্টি-টিয়ার ওয়েব অ্যাপ্লিকেশন আর্কিটেকচারের জন্য একটি রোডম্যাপ। এই প্রজেক্টটি জটিল এবং **মডিউলারাইজেশন** এর গুরুত্ব তুলে ধরবে।

**লক্ষ্য:** একটি স্কেলযোগ্য, নির্ভরযোগ্য এবং সুরক্ষিত ওয়েব অ্যাপ্লিকেশন আর্কিটেকচার স্থাপন করা, যার মধ্যে Auto Scaling, Load Balancing, Database এবং Storage থাকবে।

**প্রস্তাবিত আর্কিটেকচার কম্পোনেন্টস:**

  * **VPC এবং Subnets:** পাবলিক (ওয়েব সার্ভার, ALB) এবং প্রাইভেট (অ্যাপ্লিকেশন, ডাটাবেজ) সাবনেট সহ একটি সুসংগঠিত VPC।
  * **NAT Gateway:** প্রাইভেট সাবনেটে থাকা ইনস্ট্যান্সগুলোর জন্য ইন্টারনেট আউটবাউন্ড অ্যাক্সেস।
  * **Application Load Balancer (ALB):** ইনকামিং ট্র্যাফিককে ওয়েব সার্ভার জুড়ে বিতরণ করে।
  * **Auto Scaling Group (ASG):** ট্র্যাফিক লোড অনুযায়ী ওয়েব সার্ভারের সংখ্যা স্বয়ংক্রিয়ভাবে বাড়ানো বা কমানো।
  * **Launch Template:** ASG দ্বারা ব্যবহৃত EC2 ইনস্ট্যান্সগুলোর কনফিগারেশন নির্ধারণ করে।
  * **RDS Database:** ম্যানেজড রিলেশনাল ডাটাবেজ সার্ভিস (যেমন MySQL/PostgreSQL)।
  * **S3 Bucket:** স্ট্যাটিক ওয়েবসাইট কন্টেন্ট, লগ ফাইল বা আপলোড করা ডেটা সংরক্ষণের জন্য।
  * **IAM Roles & Policies:** রিসোর্সগুলোর মধ্যে নিরাপদ যোগাযোগ এবং সর্বনিম্ন সুবিধার নীতি অনুসরণ।
  * **CloudWatch:** লগিং এবং মনিটরিং।

**প্রজেক্ট স্ট্রাকচার (মডিউল সহ):**

```
full-web-app/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
└── modules/
    ├── vpc/             # VPC, Subnets, IGW, NAT Gateway, Route Tables
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── network-acls/    # Network ACLs (যদি ব্যবহার করেন)
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── security-groups/ # বিভিন্ন সিকিউরিটি গ্রুপ (Web SG, App SG, DB SG)
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── alb/             # Application Load Balancer
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── autoscaling-web/ # Auto Scaling Group, Launch Template
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── rds-database/    # RDS Instance (MySQL/PostgreSQL)
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── s3-storage/      # S3 Bucket for assets/logs
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── iam-roles/       # IAM Roles (যদি প্রয়োজন হয়)
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

**`full-web-app/main.tf` (হাই-লেভেল):**

```hcl
provider "aws" {
  region = var.region
}

# 1. VPC মডিউল স্থাপন করুন
module "vpc" {
  source              = "./modules/vpc"
  project_name        = var.project_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  region              = var.region
}

# 2. সিকিউরিটি গ্রুপ মডিউল স্থাপন করুন
module "security_groups" {
  source       = "./modules/security-groups"
  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
}

# 3. ALB মডিউল স্থাপন করুন
module "alb" {
  source           = "./modules/alb"
  vpc_id           = module.vpc.vpc_id
  public_subnets   = module.vpc.public_subnet_ids
  project_name     = var.project_name
  web_sg_id        = module.security_groups.web_sg_id
}

# 4. Auto Scaling Group মডিউল স্থাপন করুন
module "autoscaling_web" {
  source           = "./modules/autoscaling-web"
  vpc_id           = module.vpc.vpc_id
  private_subnets  = module.vpc.private_subnet_ids
  project_name     = var.project_name
  web_ami_id       = var.web_ami_id
  instance_type    = var.web_instance_type
  web_sg_id        = module.security_groups.web_sg_id
  target_group_arn = module.alb.target_group_arn
  desired_capacity = 2
  min_size         = 1
  max_size         = 4
}

# 5. RDS ডাটাবেজ মডিউল স্থাপন করুন
module "rds_database" {
  source           = "./modules/rds-database"
  vpc_id           = module.vpc.vpc_id
  private_subnets  = module.vpc.private_subnet_ids
  db_sg_id         = module.security_groups.db_sg_id
  db_instance_type = var.db_instance_type
  db_engine        = var.db_engine
  db_engine_version = var.db_engine_version
  db_name          = var.db_name
  db_username      = var.db_username
  db_password      = var.db_password
}

# 6. S3 বাকেট মডিউল স্থাপন করুন
module "s3_storage" {
  source      = "./modules/s3-storage"
  bucket_name = "${var.project_name}-assets"
  acl         = "private"
}

# গুরুত্বপূর্ণ আউটপুট
output "web_app_url" {
  description = "The URL of the web application through the ALB."
  value       = module.alb.alb_dns_name
}

output "database_endpoint" {
  description = "The endpoint of the RDS database."
  value       = module.rds_database.rds_endpoint
}
```

**নোট:** এই প্রজেক্টের জন্য প্রতিটি মডিউলের বিস্তারিত `main.tf`, `variables.tf`, `outputs.tf` ফাইল তৈরি করতে হবে। এটি একটি বিশাল প্রজেক্ট যা আপনাকে Terraform এর মডুলারাইজেশন, ডিপেন্ডেন্সি ম্যানেজমেন্ট এবং জটিল আর্কিটেকচার তৈরির গভীর জ্ঞান দেবে।

-----

## 💡 Terraform এর অতিরিক্ত ব্যবহার: পরবর্তী ধাপ (Additional Use Cases of Terraform: The Next Step)

Terraform এর আরও কিছু উন্নত ব্যবহার রয়েছে যা আপনাকে ইনফ্রাস্ট্রাকচার ব্যবস্থাপনার চূড়ান্ত পর্যায়ে নিয়ে যেতে পারে।

### কাস্টম প্রোভাইডার: আপনার নিজস্ব প্রয়োজন মেটান (Custom Providers: Meet Your Own Needs)

যদি আপনার এমন কোনো ইন-হাউস সার্ভিস বা হার্ডওয়্যার থাকে যার জন্য কোনো বিদ্যমান Terraform প্রোভাইডার নেই, তাহলে আপনি আপনার নিজস্ব **কাস্টম Terraform প্রোভাইডার** তৈরি করতে পারেন। এটি Go প্রোগ্রামিং ল্যাঙ্গুয়েজ ব্যবহার করে নির্মিত হয় এবং আপনাকে Terraform এর মাধ্যমে আপনার নিজস্ব API গুলোকে ইন্টিগ্রেট করতে দেয়।

### Terragrunt: Terraform কে আরও শক্তিশালী করুন (Terragrunt: Empower Terraform Even More)

**Terragrunt** হলো Terraform এর উপর নির্মিত একটি পাতলা র‍্যাপার টুল। এটি Terraform এর কিছু সীমাবদ্ধতা দূর করতে এবং DRY (Don't Repeat Yourself) নীতি অনুসরণ করতে সাহায্য করে, বিশেষ করে যখন আপনার একাধিক পরিবেশ (dev, staging, prod) বা একাধিক AWS অ্যাকাউন্ট থাকে।

**Terragrunt এর প্রধান সুবিধা:**

  * **DRY Configuration:** রিমোট স্টেট ব্যাকএন্ড এবং প্রোভাইডার কনফিগারেশনের মতো পুনরাবৃত্তিমূলক কোড হ্রাস করে।
  * **ডিপেন্ডেন্সি ম্যানেজমেন্ট:** একাধিক Terraform মডিউলের মধ্যে ডিপেন্ডেন্সি সহজে পরিচালনা করে, সঠিক অর্ডারে `apply` বা `destroy` নিশ্চিত করে।
  * **কঠোর ফোল্ডার স্ট্রাকচার:** আপনার Terraform কনফিগারেশনকে একটি নির্দিষ্ট, সংগঠিত উপায়ে বিন্যস্ত করতে সাহায্য করে।

### CI/CD পাইপলাইনে Terraform: স্বয়ংক্রিয় ডিপ্লয়মেন্ট (Terraform in CI/CD Pipelines: Automated Deployment)

আধুনিক DevOps প্র্যাকটিসে, Terraform কনফিগারেশনগুলোকে স্বয়ংক্রিয়ভাবে CI/CD (Continuous Integration/Continuous Deployment) পাইপলাইনের অংশ হিসেবে ডিপ্লয় করা হয়।

**সাধারণ CI/CD ধাপ:**

1.  **কোড কমিট:** ডেভেলপাররা Terraform কোড (HCL ফাইল) গিট রিপোজিটরিতে পুশ করে।
2.  **পুল রিকোয়েস্ট (PR) / মার্জ রিকোয়েস্ট (MR):** পরিবর্তনগুলো একটি PR/MR এর মাধ্যমে জমা দেওয়া হয়।
3.  **লিন্টিং ও ভ্যালিডেশন:** পাইপলাইন `terraform fmt` (ফরম্যাটিং) এবং `terraform validate` (সিনট্যাক্স ও সেম্যান্টিক চেক) চালায়।
4.  **প্ল্যানিং:** একটি `terraform plan` তৈরি করা হয় এবং এর আউটপুট PR/MR এর কমেন্টে পোস্ট করা হয়। এটি ম্যানুয়াল রিভিউ এবং অনুমোদনের জন্য গুরুত্বপূর্ণ।
5.  **টেস্টিং:** (ঐচ্ছিক) Terratest এর মতো টুল ব্যবহার করে প্রকৃত ইনফ্রাস্ট্রাকচার ডিপ্লয়মেন্টের একটি স্যানিটি টেস্ট চালানো হয়।
6.  **অ্যাপ্লাই:** রিভিউ এবং অনুমোদন পাওয়ার পর, স্বয়ংক্রিয়ভাবে `terraform apply` কমান্ডটি ইনফ্রাস্ট্রাকচার পরিবর্তন প্রয়োগ করে।
7.  **মনিটরিং ও অ্যালার্টিং:** ডিপ্লয়মেন্টের পর ইনফ্রাস্ট্রাকচারের স্বাস্থ্য পর্যবেক্ষণ করা হয়।

**জনপ্রিয় CI/CD টুলস যা Terraform এর সাথে কাজ করে:**

  * **Jenkins**
  * **GitLab CI/CD**
  * **GitHub Actions**
  * **AWS CodePipeline/CodeBuild**
  * **Azure DevOps Pipelines**
  * **CircleCI**

### Testing Terraform Configurations: ত্রুটিমুক্ত ইনফ্রা (Testing Terraform Configurations: Error-Free Infra)

আপনার Terraform কনফিগারেশনগুলো টেস্ট করা প্রোডাকশন পরিবেশে অপ্রত্যাশিত সমস্যা এড়াতে অপরিহার্য।

**বিভিন্ন ধরণের টেস্টিং:**

  * **ইউনিট টেস্টিং:** পৃথক Terraform মডিউল বা রিসোর্স ব্লকের সিনট্যাক্স এবং প্রাথমিক লজিক পরীক্ষা করা।
  * **ইন্টিগ্রেশন টেস্টিং:** একাধিক মডিউল বা রিসোর্স একসাথে কাজ করছে কিনা তা যাচাই করতে বাস্তব ক্লাউড পরিবেশে ইনফ্রাস্ট্রাকচার ডিপ্লয় করা।
  * **স্ন্যাপশট টেস্টিং:** `terraform plan` এর আউটপুটকে রেফারেন্স হিসেবে সংরক্ষণ করা এবং ভবিষ্যতের প্ল্যানগুলো এর সাথে তুলনা করা।
  * **কমপ্লায়েন্স টেস্টিং:** আপনার ইনফ্রাস্ট্রাকচার সিকিউরিটি এবং কমপ্লায়েন্স স্ট্যান্ডার্ড (যেমন CIS Benchmarks) মেনে চলছে কিনা তা যাচাই করা।

**জনপ্রিয় টেস্টিং টুলস:**

  * **Terratest (Go):** এটি একটি শক্তিশালী Go-ভিত্তিক ফ্রেমওয়ার্ক যা প্রকৃত ইনফ্রাস্ট্রাকচার ডিপ্লয় করে, পরীক্ষা চালায় এবং তারপর সেটি পরিষ্কার করে। এন্ড-টু-এন্ড ইন্টিগ্রেশন টেস্টিংয়ের জন্য আদর্শ।
  * **InSpec:** অডিট এবং কমপ্লায়েন্স টেস্টিংয়ের জন্য ব্যবহৃত হয়।
  * **Kitchen-Terraform:** Test Kitchen-এর একটি প্লাগইন যা Terraform কনফিগারেশন টেস্টিংয়ের জন্য ব্যবহৃত হয়।
  * **Terraform Validate:** (বিল্ট-ইন) HCL সিনট্যাক্স এবং কনফিগারেশন ফাইলগুলোর প্রাথমিক বৈধতা পরীক্ষা করে।
  * **Checkov/Terrascan:** Static analysis security testing (SAST) টুল যা আপনার Terraform কোডে সম্ভাব্য নিরাপত্তা দুর্বলতা বা কমপ্লায়েন্স লঙ্ঘন খুঁজে বের করে।

-----

## 👋 যোগাযোগ ও অবদান: একসাথে শিখি, একসাথে গড়ি (Contact and Contributions: Learn Together, Build Together)

এই রিপোজিটরিটি Terraform এর উপর একটি জীবন্ত, বিকশিত গাইড হিসেবে কাজ করার জন্য ডিজাইন করা হয়েছে। আপনার প্রশ্ন, পরামর্শ, বা অবদান আমাদের জন্য অত্যন্ত মূল্যবান\!

  * **প্রশ্ন আছে?** যেকোনো জিজ্ঞাসা বা বিষয় নিয়ে আলোচনার জন্য নির্দ্বিধায় [GitHub Issues](https://www.google.com/search?q=https://github.com/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%87%E0%A6%89%E0%A6%9C%E0%A6%BE%E0%A6%B0%E0%A6%A8%E0%A7%87%E0%A6%AE/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%B0%E0%A6%BF%E0%A6%AA%E0%A7%8B%E0%A6%9C%E0%A6%BF%E0%A6%9F%E0%A6%B0%E0%A6%BF/issues) সেকশনে একটি নতুন ইস্যু তৈরি করুন।
  * **অবদান রাখতে চান?** কোড উদাহরণ, ডকুমেন্টেশন, বা আরও উন্নত প্রজেক্ট যোগ করে এই রিপোজিটরিকে আরও সমৃদ্ধ করতে চান? আমরা আপনার [Pull Requests](https://www.google.com/search?q=https://github.com/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%87%E0%A6%89%E0%A6%9C%E0%A6%BE%E0%A6%B0%E0%A6%A8%E0%A7%87%E0%A6%AE/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%B0%E0%A6%BF%E0%A6%AA%E0%A7%8B%E0%A6%9C%E0%A6%BF%E0%A6%9F%E0%A6%B0%E0%A6%BF/pulls) সাদরে গ্রহণ করব। কিভাবে অবদান রাখবেন, তা জানতে [CONTRIBUTING.md](https://www.google.com/search?q=CONTRIBUTING.md) ফাইলটি দেখুন (যদি থাকে)।

আমরা একসাথে এই কমিউনিটিকে আরও শক্তিশালী করতে চাই\!

-----

## 📜 লাইসেন্স (License)

এই প্রজেক্টটি [MIT License](https://www.google.com/search?q=LICENSE) এর অধীনে লাইসেন্সকৃত। বিস্তারিত তথ্যের জন্য `LICENSE` ফাইলটি দেখুন।

-----
