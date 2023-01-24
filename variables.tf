variable "region" {
  description = "AWS Region"
  type        = string
}
variable "athena_name" {
  description = "athena_name"
  type        = string
}
variable "bucket" {
  type        = string
}
variable "force_destroy" {
   type        = bool
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}

