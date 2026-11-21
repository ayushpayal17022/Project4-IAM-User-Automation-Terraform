variable "iam_user_name" {
  description = "IAM User Name"
  type        = string
  default     = "s3-read-user-ayush"
}

variable "policy_arn" {
  description = "S3 Read Only Policy"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
