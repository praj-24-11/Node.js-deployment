resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-unique-terraform-state-bucket-${random_id.bucket_suffix.hex}"
  acl    = "private"
  region = "us-east-1"
}

resource "random_id" "bucket_suffix" {
  byte_length = 8
}

terraform {
  backend "s3" {
    bucket         = "unique8313878137891"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
    acl            = "bucket-owner-full-control"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
