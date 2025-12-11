terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "backend_bucket" {
  bucket = "aws-course-piyush-backend"

  force_destroy = true

  tags = {
    Name = "backend"
    Environment = "dev"
  }
}
