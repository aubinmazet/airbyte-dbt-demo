resource "google_storage_bucket" "gcp_bucket" {
  name          = "${var.project_id}-bucket"
  location      = local.region
  project       = var.project_id
}

