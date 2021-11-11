module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"


  bucket_prefix	= "${var.prefix}"
  acl    = "private"

  versioning = {
    enabled = true
  }

tags = {
    owner = "${var.prefix}-gaurav"
  }

}