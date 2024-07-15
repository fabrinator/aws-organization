terraform {
  backend "s3" {
    bucket         = "tfstate-frivas-crc"
    key            = "aws/aws-organizations"
    region         = "us-east-1"
    dynamodb_table = "app-state"
  }
}
