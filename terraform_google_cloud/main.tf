
resource "google_compute_instance" "default" {
  name         = var.gcp_compute_lab
  machine_type = var.machine_type
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}



provider "google" {
  project = ""
  region = "us-central1"
  
}
locals {
  
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = "mydataset"
  friendly_name = "example_dataset"
  description = "This is Bigquery dataset from Terraform Script"
  location = "us-central1"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}

resource "google_bigquery_table" "table_tf" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id = "table_from_tf"
  labels = {
    env = "default"
  }
  
}
  
