variable "region" {
  description = "The AWS region where resources will be created (e.g., ap-south-1, us-east-1)."
  type        = string
}

variable "athena_name" {
  description = "The name to assign to the Amazon Athena workgroup or configuration."
  type        = string
}

variable "bucket" {
  description = "The name of the S3 bucket used for storing Athena query results or logs."
  type        = string
}

variable "force_destroy" {
  description = "Whether to allow the S3 bucket to be deleted even if it contains objects (true/false)."
  type        = bool
}

variable "role_arn" {
  description = "The Amazon Resource Name (ARN) of the IAM role that Athena will assume for accessing resources."
  type        = string
}
variable "athena_workgroup_name" {
  description = "Name of the Athena workgroup"
  type        = string
}
variable "state" {
  description = "Specifies the state of the Athena WorkGroup. Valid values are ENABLED or DISABLED."
  type        = string
  default     = "ENABLED"
}