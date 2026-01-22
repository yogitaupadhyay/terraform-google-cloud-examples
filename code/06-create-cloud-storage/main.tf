# Configure the Google Cloud provider
provider "google" {
  project = var.project_id
  region  = "us-central1"
}

# Create a Google Cloud Storage Bucket
resource "google_storage_bucket" "byotf-yogita" {
  name          = "${var.bucket_name}"
  location      = "us"
  force_destroy = true
  uniform_bucket_level_access = true
}
