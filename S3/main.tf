terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

resource "random_string" random{
    length   = 6
    special  = false
    lower    = true
    upper    = false 
}

resource "aws_s3_bucket" "demos3" {
    bucket   = "${var.bucket_name}${random_string.random.result}" 
}