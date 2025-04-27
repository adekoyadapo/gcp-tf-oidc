# gcp bucket terraform backend
terraform {
  backend "gcs" {
    bucket = "dd-demo-tf-backend"
    prefix = "terraform/state"
  }
}
