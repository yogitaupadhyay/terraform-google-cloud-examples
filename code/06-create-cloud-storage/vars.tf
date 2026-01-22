# Input variable: Name of Google Cloud Storage bucket
variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket. Must be globally unique."
  default = "byotf-yogita"
}
variable "project_id" {
  type        = string
  description = "The GCP project ID to deploy resources into."
  # No default value - forces the user to provide one.
}
