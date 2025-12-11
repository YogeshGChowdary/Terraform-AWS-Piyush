terraform {
  backend "s3" {
    bucket = "aws-course-piyush-backend"
    key    = "dev/terraform.tfstate"   //path with in bucket where to store statefile
    region = "us-east-1"
    encrypt = true
    use_lockfile = true 
  }

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

resource "aws_s3_bucket" "test" {
  bucket = "test-day04"
}