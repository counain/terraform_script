variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
}

variable "sse_algorithm" {
  description = "Server-side encryption algorithm for the S3 bucket"
  type        = string
  default     = "AES256"  # Default to AES256 encryption
}

