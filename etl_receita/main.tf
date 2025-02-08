terraform {
  required_providers { google = {
    source = "hashicorp/google"
  version = "6.16.0" } }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

resource "google_bigquery_dataset" "datasets" {
  for_each = local.datasets
  project                     = var.project
  dataset_id                  = each.value["dataset_id"]
  friendly_name               = each.value["friendly_name"]
  description                 = each.value["description"]
  location                    = each.value["location"]
}