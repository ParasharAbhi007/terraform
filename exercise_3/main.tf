provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "lijo"        # bucket for remote state
    key    = "exercise_3/terraform.tfstate"  # required path inside the bucket
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "tf_root_module_bucket" {
  bucket = "lijo"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = lijo
    Environment = env
  }
}
