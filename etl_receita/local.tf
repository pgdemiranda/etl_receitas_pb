locals {
  datasets = jsondecode(file("${path.module}/resource/datasets.json"))["datasets"]
}