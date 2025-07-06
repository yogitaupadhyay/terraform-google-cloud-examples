# Output variable: Google Cloud Storage Bucket
output "storage_bucket_self_link" {
  value = "${google_storage_bucket.byotf-testing-bucket.self_link}"
}
