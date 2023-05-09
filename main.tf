resource "google_compute_instance" "opinion-dev" {
  name         = var.dev-gce-instance-name
  machine_type = var.dev-gce-instance-machine-type
  zone         = var.dev-gce-instance-az
  boot_disk {
    initialize_params {
      image = var.dev-gce-instance-machine-image
    }
  }
  network_interface {
    network = var.dev-gce-instnace-network

    access_config {
      nat_ip = "${google_compute_address.static-ip-address.address}"
    }
  }
  depends_on = [google_compute_address.static-ip-address]
}

resource "google_compute_address" "static-ip-address" {
  name =var.dev-gce-static-ip-address
}

resource "google_storage_bucket" "tfjk-bucket" {
  name               = var.storage-bucket-name
  location           = var.storage-bucket-location
  force_destroy      = var.bucket-force-destroy
  versioning {
    enabled          = var.bucket-versioning
  }

  lifecycle_rule {
    condition {
      age            = 30
    }
    action {
      type          = "SetStorageClass"
      storage_class = var.bucket-storage-class
    }
  }
}