terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_user" "terraform_user" {
  name = var.iam_user_name
}

resource "aws_iam_user_policy_attachment" "s3_read_access" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = var.policy_arn
}
