
resource "google_bigquery_dataset" "source_datasets" {
  for_each    = local.source_datasets
  dataset_id  = each.key
  description = each.value
  project     = var.project_id
  location    = local.region
  delete_contents_on_destroy = true

  access {
    role          = "WRITER"
    user_by_email = google_service_account.airbyte_sa.email
  }
  access {
    role          = "WRITER"
    user_by_email = google_service_account.dbt_sa.email
  }
  access {
    role          = "OWNER"
    user_by_email = google_service_account.bq_owner.email
  }
}