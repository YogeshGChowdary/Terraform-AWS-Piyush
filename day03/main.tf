terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}


resource "aws_s3_bucket" "first_bucket" {
  bucket = "yogeshzzz-aws-bucket"

  tags = {
    Name = "My bucket-2.0"
    Environment = "Dev"
  }
}