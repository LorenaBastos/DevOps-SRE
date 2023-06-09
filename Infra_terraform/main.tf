provider "google" {
  credentials = file("service-account-key.json")
  project     = "<project-id>"
  region      = "us-central1"
}

resource "google_container_cluster" "my_cluster" {
  name               = "my-gke-cluster"
  location           = "us-central1-a"
  initial_node_count = 1
  node_config {
    machine_type = "n1-standard-2"
  }
}
