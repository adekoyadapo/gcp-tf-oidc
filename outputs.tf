output "pool_name" {
  value = module.gh_oidc.pool_name
}

output "provider" {
  value = module.gh_oidc.provider_name
}

output "sa" {
  value = google_service_account.sa.email
}