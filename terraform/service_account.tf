# Bigquery Owner
resource "google_service_account" "bq_owner" {
  account_id = "bq-owner"
  project    = var.project_id
  
}

# Airbyte service account
resource "google_service_account" "airbyte_sa" {
  account_id   = "airbyte"
  project      = var.project_id
  display_name = "Airbyte Service Account"
  description  = "Airbyte service account"
  
}
# Airbyte service account key
resource "google_service_account_key" "airbyte_sa_key" {
  service_account_id = google_service_account.airbyte_sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
  
}


# dbt service account
resource "google_service_account" "dbt_sa" {
  account_id   = "dbt-runner"
  project      = var.project_id
  display_name = "dbt Service Account"
  description  = "dbt service account"
  
}
# dbt service account key
resource "google_service_account_key" "dbt_sa_key" {
  service_account_id = google_service_account.dbt_sa.name
  public_key_type    = "TYPE_X509_PEM_FILE"
  
}