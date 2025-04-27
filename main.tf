# terraform code to create service account and assign editor permissions
resource "google_service_account" "sa" {
  account_id   = "sa-${var.app_name}"
  display_name = "Service Account"
  project      = var.project_id
}
resource "google_project_iam_member" "sa" {
  project = var.project_id
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.sa.email}"
}

module "gh_oidc" {
  source  = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  version = "~> 4.0"

  project_id          = var.project_id
  pool_id             = "wk-pool-tf-${var.app_name}"
  provider_id         = "gh-provider"
  attribute_condition = "attribute.repository=='${var.reponame}'"
  sa_mapping = {
    (google_service_account.sa.account_id) = {
      sa_name   = google_service_account.sa.name
      attribute = "attribute.repository/${var.reponame}"
    }
  }
}