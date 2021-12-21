locals {
  region                = "europe-north1"
  zone                  = "europe-north1-a"
  airbyte_machine_type  = "e2-small"
  source_datasets = {
    ecommerce = "dataset containing ecommerce data"
  }
}

variable "project_id" {
  type = string
}

variable "billing_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "org_id" {
  type = string
}