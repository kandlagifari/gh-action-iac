/* ---------------------------------------------  Basic S3 Bucket --------------------------------------------- */

s3_bucket_details = {
  "testing_bucket" = {
    bucket_name          = "bucket-testing-from-github-action-tf"
    rule_id              = "LifecyclePolicy-90Days"
    rule_expiration_days = 90
  }
}
