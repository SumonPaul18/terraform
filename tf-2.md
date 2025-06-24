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

1.  **IAM User তৈরি ও অ্যাক্সেস কী পান:**

      * AWS কনসোলে গিয়ে একটি **IAM User** তৈরি করুন।
      * এই User-কে আপনার Terraform কনফিগারেশন যে AWS রিসোর্সগুলো তৈরি বা ম্যানেজ করবে, সেগুলোর জন্য **প্রয়োজনীয় সর্বনিম্ন অনুমতি (Least Privilege)** দিন।
      * User তৈরির সময় একটি `Access Key ID` এবং `Secret Access Key` পাবেন। **Secret Access Key শুধুমাত্র একবারই দেখা যাবে; এটি সুরক্ষিতভাবে সংরক্ষণ করুন।**

2. **Credentials হার্ডকোডিং (NOT Recommended for Production)**

এই পদ্ধতিটি শুধুমাত্র শেখার উদ্দেশ্যে বা অত্যন্ত ছোট, অ-সংবেদনশীল প্রজেক্টের জন্য ব্যবহার করা যেতে পারে। **প্রোডাকশন পরিবেশে বা পাবলিক রিপোজিটরিতে কখনোই ক্রেডেনশিয়াল হার্ডকোড করবেন না\!**

Project Folder এ `provider.tf` একটি ফাইল তৈরি করুন। 
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

<details>
  <summary> Credentials Setup Guides - **Details** </summary>

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
**পদ্ধতি B: Using AWS CLI (`aws configure`)**

AWS-এর সাথে Terraform সংযোগের জন্য **AWS Shared Credentials File** (`~/.aws/credentials`) ব্যবহার করা একটি অত্যন্ত সাধারণ ও প্রস্তাবিত পদ্ধতি। এটি স্থানীয় ডেভেলপমেন্টের জন্য আদর্শ এবং একাধিক AWS প্রোফাইল ব্যবস্থাপনার সুবিধা দেয়। **AWS CLI-এর `aws configure` কমান্ডটি এই ফাইলটি তৈরি ও ব্যবস্থাপনার একটি সহজ উপায়।**

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
---
**পদ্ধতি D: Shared Credentials File (credentials argument)**
আপনি একটি নির্দিষ্ট credentials ফাইল পাথ উল্লেখ করতে পারেন।

```
nano provider.tf
```

```
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["/path/to/my/custom_credentials_file"]
  profile                  = "my-custom-profile"
}
```
- সুবিধা: ডিফল্ট পাথ ব্যবহার না করে কাস্টম ফাইলে credentials রাখতে পারবেন।
- অসুবিধা: ফাইলটির নিরাপত্তা নিশ্চিত করা আপনার দায়িত্ব।

---

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

```
nano provider.tf
```

```hcl
provider "openstack" {
  user_name   = "your_openstack_username"
  tenant_name = "your_openstack_project_name"
  password    = "your_openstack_password"
  auth_url    = "http://your-openstack-auth-url:5000/v3"
  region      = "RegionOne"
}
```

### অতিরিক্ত টিপস (Additional Tips)

  * **সংবেদনশীল ডেটা সুরক্ষিত করুন:** ক্রেডেনশিয়ালস বা অন্যান্য সংবেদনশীল ডেটা কখনোই Git রিপোজিটরিতে পুশ করবেন না। `.gitignore` ফাইল ব্যবহার করে এগুলোকে ইগনোর করুন।
  * **HashiCorp Vault:** প্রোডাকশন পরিবেশে ক্রেডেনশিয়ালস সুরক্ষিতভাবে পরিচালনার জন্য HashiCorp Vault একটি অত্যন্ত শক্তিশালী টুল। Terraform Vault এর সাথে ইন্টিগ্রেট করতে পারে।
  * **Least Privilege Principle:** আপনার ক্লাউড ক্রেডেনশিয়ালসকে শুধুমাত্র প্রয়োজনীয় সর্বনিম্ন অনুমতি দিন। অপ্রয়োজনীয় উচ্চ অনুমতি নিরাপত্তা ঝুঁকি বাড়ায়।
  * **Terraform Cloud/Enterprise:** HashiCorp এর নিজস্ব SaaS/Enterprise সলিউশনগুলো সিক্রেট ম্যানেজমেন্ট, স্টেট ম্যানেজমেন্ট এবং সহযোগিতা ফিচারগুলো সহজ করে।


এই গাইডলাইনগুলো আপনাকে বিভিন্ন ক্লাউড প্রোভাইডারের সাথে Terraform ক্রেডেনশিয়াল সেটআপ করার জন্য একটি স্পষ্ট এবং কার্যকরী পথ দেখাবে।

-----
</details>

## 👣 Basic Usage of Terraform

Real-world Projects with Terraform and AWS: Learn Hands-On

এখানে AWS এর সাথে Terraform ব্যবহার করে কিছু বাস্তব প্রজেক্টের উদাহরণ দেওয়া হলো, যা আপনার Terraform দক্ষতা বৃদ্ধিতে সাহায্য করবে।

### First Project: An EC2 Instance

এটি Terraform দিয়ে আপনার প্রথম ক্লাউড রিসোর্স তৈরির একটি মৌলিক উদাহরণ।

**লক্ষ্য:** একটি একক AWS EC2 ইনস্ট্যান্স স্থাপন করা।

**ফাইল স্ট্রাকচার:**

```
ec2-project/
├── main.tf
├── variables.tf
└── outputs.tf
```
একটি ফোল্ডার তৈরি করুন এবং ফোল্ডারে প্রবেশ করুন।

```
mkdir ec2-project
cd ec2-project
```
**For main.tf:**

```
nano main.tf
```
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
**`For variables.tf`:**

```
nano variables.tf
```

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

**`For outputs.tf`:**

```
nano outputs.tf
```

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

---

## 👋 Contact and Contributions: Learn Together, Build Together

এই রিপোজিটরিটি Terraform এর উপর একটি জীবন্ত, বিকশিত গাইড হিসেবে কাজ করার জন্য ডিজাইন করা হয়েছে। আপনার প্রশ্ন, পরামর্শ, বা অবদান আমাদের জন্য অত্যন্ত মূল্যবান\!

  * **প্রশ্ন আছে?** যেকোনো জিজ্ঞাসা বা বিষয় নিয়ে আলোচনার জন্য নির্দ্বিধায় [GitHub Issues](https://www.google.com/search?q=https://github.com/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%87%E0%A6%89%E0%A6%9C%E0%A6%BE%E0%A6%B0%E0%A6%A8%E0%A7%87%E0%A6%AE/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%B0%E0%A6%BF%E0%A6%AA%E0%A7%8B%E0%A6%9C%E0%A6%BF%E0%A6%9F%E0%A6%B0%E0%A6%BF/issues) সেকশনে একটি নতুন ইস্যু তৈরি করুন।
  * **অবদান রাখতে চান?** কোড উদাহরণ, ডকুমেন্টেশন, বা আরও উন্নত প্রজেক্ট যোগ করে এই রিপোজিটরিকে আরও সমৃদ্ধ করতে চান? আমরা আপনার [Pull Requests](https://www.google.com/search?q=https://github.com/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%87%E0%A6%89%E0%A6%9C%E0%A6%BE%E0%A6%B0%E0%A6%A8%E0%A7%87%E0%A6%AE/%E0%A6%86%E0%A6%AA%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%B0%E0%A6%BF%E0%A6%AA%E0%A7%8B%E0%A6%9C%E0%A6%BF%E0%A6%9F%E0%A6%B0%E0%A6%BF/pulls) সাদরে গ্রহণ করব। কিভাবে অবদান রাখবেন, তা জানতে [CONTRIBUTING.md](https://www.google.com/search?q=CONTRIBUTING.md) ফাইলটি দেখুন (যদি থাকে)।

আমরা একসাথে এই কমিউনিটিকে আরও শক্তিশালী করতে চাই\!

-----

## 📜 লাইসেন্স (License)

এই প্রজেক্টটি [MIT License](https://www.google.com/search?q=LICENSE) এর অধীনে লাইসেন্সকৃত। বিস্তারিত তথ্যের জন্য `LICENSE` ফাইলটি দেখুন।

-----
