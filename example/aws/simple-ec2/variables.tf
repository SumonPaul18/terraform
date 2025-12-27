variable "region" {
  description = "AWS region for resource deployment."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance (e.g., Ubuntu 20.04 LTS)."
  type        = string
  default     = "ami-0ecb62995f68bb549" 
}

variable "instance_type" {
  description = "The instance type for the EC2 instance (e.g., t2.micro)."
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance."
  type        = string
  default     = "EC2-1"
}
