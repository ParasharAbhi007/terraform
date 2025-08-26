provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

terraform {
  backend "s3" {
    bucket = var.s3_bucket_name        # bucket for remote state
    key    = "exercise_3/terraform.tfstate"  # required path inside the bucket
    region = var.s3_bucket_region
  }
}

resource "aws_s3_bucket" "tf_root_module_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = var.s3_bucket_name
    Environment = var.tag_env
  }
}
