variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "hash_key" {
  description = "The attribute name used as the hash (partition) key for the DynamoDB table"
  type        = string
}

