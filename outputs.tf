resource "local_file" "gcsjob_variables" {
  content = templatefile("gcs.nomadvars.hcl.tftpl", {
    gcs_bucket      = google_storage_bucket.nomad.name,
    wid_provider    = google_iam_workload_identity_pool_provider.nomad_provider.name,
    service_account = google_service_account.nomad.email,
    gcp_project_num = data.google_project.main.number,
  })
  filename = "gcs.nomadvars.hcl"
}

output "gcp_project_num" {
  value       = data.google_project.main.number
  description = "Google Cloud Project Number for use in gcs.nomad.hcl"
}
output "wid_provider" {
  value       = google_iam_workload_identity_pool_provider.nomad_provider.name
  description = "Google Workload Identity Pool Provider Name for use in gcs.nomad.hcl"
}

output "service_account" {
  value       = google_service_account.nomad.email
  description = "Google Service Account Email for use in gcs.nomad.hcl"
}

