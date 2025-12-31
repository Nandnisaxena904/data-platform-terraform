resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-terraform-bucket-${random_id.bucket_id.hex}"
  acl    = "private"

  tags = {
    Name        = "TerraformExampleBucket"
    Environment = "Dev"
  }
}

