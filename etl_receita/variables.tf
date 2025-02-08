variable "credentials" {
  description = "Credentials"
  default     = "./credentials/sound-bee-448014-m3-27183706c17d.json"
}

variable "project" {
  description = "Project"
  default     = "sound-bee-448014-m3"
}

variable "region" {
  description = "Project Region"
  default     = "SOUTHAMERICA-EAST1"
}

variable "location" {
  description = "Project Location"
  default     = "SOUTHAMERICA-EAST1"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "data_warehouse"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "sound-bee-448014-m3-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}