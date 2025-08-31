terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.0.1"
    }
  }
}

# main.tf

# Configure the Google Cloud provider
provider "google" {
  project = "dev-382813" # Replace with your actual GCP Project ID
  region  = "us-central1"
}

# Define the GKE cluster resource
resource "google_container_cluster" "primary" {
  name     = "test-gke-cluster"
  location = "us-central1"

  # We can start with a small cluster and scale later
  initial_node_count = 1
}
