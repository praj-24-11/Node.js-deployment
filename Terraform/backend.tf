terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "path/to/terraform.tfstate"
    region = "us-east-1"
    encrypt = true

    # Enable DynamoDB for state locking
    dynamodb_table = "terraform_state_lock"
    acl            = "private"
  }
}
