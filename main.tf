resource "aws_s3_bucket" "b" {
  bucket = var.module_bucket_name
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "module_bucket_name" {
  type        = string
  description = "Name of Nested Module"
}
