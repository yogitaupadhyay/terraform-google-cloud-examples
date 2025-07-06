# Configure the Google Cloud provider
provider "google" {
  project = "solutions-yogita"
  region  = "us-central1"
}

# Create a Google Cloud Storage Bucket
resource "google_storage_bucket" "byotf-testing-bucket" {
  name          = "${var.bucket_name}"
  location      = "us"
  force_destroy = true
}
