# Configure the Google Cloud provider
provider "google" {
 project = "cloud-appcenter-e2e-testing"
  region  = "us-central1"
}

# Create a Google Compute Firewall
resource "google_compute_firewall" "instance" {
  name    = "terraform-example-instance-yogita"
  network = "default"

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["${var.server_port}"]
  }
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "example-yogita"
  machine_type  = "f1-micro"
  zone          = "us-central1-b"
  
  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }
  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  
  tags = ["terraform-example"]
  
  metadata_startup_script = "echo 'Hello, World' > index.html ; nohup busybox httpd -f -p ${var.server_port} &"
}
