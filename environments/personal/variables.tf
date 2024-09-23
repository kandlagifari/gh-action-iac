/* ----------------------------------- Basic S3 Bucket ---------------------------------- */

variable "s3_bucket_details" {
  type = map(object({
    bucket_name          = string
    rule_id              = string
    rule_expiration_days = number
  }))
}
