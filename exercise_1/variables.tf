variable "access_key" {}
variable "secret_key" {}

variable "region" {
  type        = string
  description = "AWS Region required by Terraform AWS Provider"
  default     = "us-east-1"
  }

variable "s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket to be created used to store the remote state file"
  default     = "abhi-tf-bucket-training-exercise-01"
  }

variable "tag_env" {
  type        =  string
  description = "Tag for Environment Name"
  default     = "training"
  }
