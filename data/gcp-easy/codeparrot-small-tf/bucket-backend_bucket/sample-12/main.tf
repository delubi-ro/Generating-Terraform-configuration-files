terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create storage bucket resource
resource "google_storage_bucket" "name_0" {
  name = "my-bucket-${random_suffix}"
  location = "US"
  uniform_bucket_level_access = true
}

# create compute backend bucketresource
resource "google_storage_bucket_object" "name_1" {
  name = "my-backend-bucket-${random_suffix}"
  bucket = google_storage_bucket.name_0.name
  source = "hashicorp/google/latest/backend/bucket"
}

