provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "dependent" {
  bucket = "my-bucket"

  depends_on = [ aws_s3_bucket.primary ]
}