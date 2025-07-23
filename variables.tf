variable "env" {
  description = "Environment name"
}

variable "events_table" {
  description = "The name of the DynamoDB table used to store events"
  type        = string
}

variable "snapshots_table" {
  description = "The name of the DynamoDB table used to store snapshots"
  type        = string
}

variable "snapshots_read_capacity" {
  description = "The read capacity of the snapshots DynamoDB table"
  type        = string
  default     = "1"
}

variable "snapshots_write_capacity" {
  description = "The write capacity of the snapshots DynamoDB table"
  type        = string
  default     = "1"
}

variable "cms_name" {
  description = "The name of the CMS creating the infrastructure"
  type        = string
}

variable "global_secondary_index" {
  description = "The configuration for the global secondary index on the snapshots DynamoDB table"
  type = object({
   name               = string
   hash_key           = string
   range_key          = string
   read_capacity      = optional(number)
   write_capacity     = optional(number)
   projection_type    = string
   non_key_attributes = list(string)
  })
  default = null
}
