provider "google" {
  credentials = file("path/to/service-account-key.json")
  project     = "<your-project-id>"
  region      = "<your-preferred-region>"
}

resource "google_container_cluster" "my_cluster" {
  name               = "my-gke-cluster"
  location           = "<your-preferred-region>"
  initial_node_count = 1
  node_config {
    machine_type = "n1-standard-2"
  }
}
