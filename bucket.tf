resource "aws_s3_bucket" "demos3-paayi" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"   
}