terraform {
  backend "s3" {
    bucket         = "todo-list-1987"   # Replace with your S3 bucket name
    key            = "state/dev/terraform.tfstate"  # Path inside the bucket
    region         = "eu-west-2"                   # AWS region
    dynamodb_table = "terraform-lock"             # DynamoDB table for state locking
    encrypt        = true                          # Encrypt state at rest in S3
  }
}

