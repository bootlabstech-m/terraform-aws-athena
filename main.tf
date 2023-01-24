resource "aws_athena_database" "athena_db" {
  name   = var.athena_name
  bucket = var.bucket
  force_destroy = var.force_destroy
}
