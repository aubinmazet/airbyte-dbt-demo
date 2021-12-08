resource "google_compute_instance" "airbyte_instance" {
  name                    = "${var.project_id}-airbyte"
  machine_type            = local.airbyte_machine_type
  project                 = var.project_id
  metadata_startup_script = file("../install_scripts/airbyte.sh")


  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20210415"
      size  = 50
      type  = "pd-balanced"
    }
  }
  network_interface {
    network = "default"
    access_config {
      network_tier = "PREMIUM"
    }
  }
}

