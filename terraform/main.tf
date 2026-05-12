resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "terraform-demo"
  }
}

resource "aws_s3_bucket" "demo_bucket_secondary" {
  bucket = "craigdent-demo-secondary-bucket-2026"
  
  tags = {
    Name        = "terraform-demo-secondary"
    Environment = "demo"
  }
}
