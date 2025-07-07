## Uncomment this if you want to create a s3 bucket and feed to below config
#resource "aws_s3_bucket" "athena_results" {
#   bucket = var.bucket
#   force_destroy = var.force_destroy
# }

resource "aws_athena_database" "athena_db" {
  name   = var.athena_name
  bucket = var.bucket
  force_destroy = var.force_destroy
}

resource "aws_athena_workgroup" "athena_wrkgrp" {
  name = var.athena_workgroup_name
  state       = var.state
  configuration {
    result_configuration {
      output_location = "s3://${var.bucket}/results/"
    }
    enforce_workgroup_configuration = true
  }
  depends_on = [aws_athena_database.athena_db]

}
