terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"      # S3 bucket name
    key            = "terraform/state/terraform.tfstate"  # Path inside the bucket
    region         = "us-east-1"                   # Region where S3 and DynamoDB are located
    encrypt        = true                          # Encryption for state files
    dynamodb_table = "terraform-locks"            # DynamoDB table for state locking
    acl            = "bucket-owner-full-control"  # Access control for state file
  }
}
