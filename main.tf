provider "aws" {
   
    region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-paayi-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}