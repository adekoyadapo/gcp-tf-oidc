output "pool_name" {
  value = module.gh_oidc.pool_name
  description = "Pool Name"
}

output "provider" {
  value = module.gh_oidc.provider_name
  description = "Provider Name"
}

output "sa" {
  value = google_service_account.sa.email
  description = "Service Account Email"
}