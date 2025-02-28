provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-${random_pet.name}"
  acl    = "private"
}

resource "random_pet" "name" {}
