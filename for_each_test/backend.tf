data "aws_region" "current" {}

terraform {
  backend "s3" {
    bucket = "bharaths-test-terraform-remote-state-aps1"
    key = "test"
    dynamodb_table = "bharaths-test-terraform-remote-state-locks-aps1"
    region = "ap-southeast-1"
  }
}