# Configure the Google Cloud provider
provider "google" {
  project = "cloud-appcenter-e2e-testing"
  region  = "us-central1"
}

# Create a Google Cloud Storage Bucket
resource "google_storage_bucket" "terraform_state" {
  name          = "${var.bucket_name}"
  force_destroy = true
}
