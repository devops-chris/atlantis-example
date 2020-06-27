provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "cms-dev-test-terraform-state"
    region         = "us-east-1"
    dynamodb_table = "tf_lock"
  }
}

resource "null_resource" "example" {
}

resource "null_resource" "number2" {
}


