resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "insecure-bucket-example"

  acl = "public-read" # Publicly accessible bucket (Checkov flag: Public ACL)

  tags = {
    Environment = "dev"
  }
}

resource "aws_s3_bucket_policy" "insecure_policy" {
  bucket = aws_s3_bucket.insecure_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action    = "s3:*",
        Effect    = "Allow",
        Resource  = "${aws_s3_bucket.insecure_bucket.arn}/*",
        Principal = "*"
      }
    ]
  })
}
