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

# create google notebooks enviroment
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  machine_type = "f1-micro"
  location = "us-central1"
  initial_node_count = 1

  # create a storage bucket for notebooks storage
  bucket = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_bucket = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "MULTI_REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "MULTI_REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "MULTI_REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "MULTI_REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a storage bucket for notebooks storage
  storage_class = "REGIONAL"

  # create a storage bucket for notebooks storage
  storage_bucket_name = "my-storage-bucket-${random_suffix}"

  # create a
}

