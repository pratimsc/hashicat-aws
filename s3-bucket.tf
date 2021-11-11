module "s3-bucket" {
  source  = "app.terraform.io/yantra-cloud/s3-bucket/aws"
  version = "2.11.1"

  bucket_prefix	= "${var.prefix}"
  acl    = "private"

  versioning = {
    enabled = true
  }

tags = {
    owner = "${var.prefix}-gaurav"
  }

}