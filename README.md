# nomad-dynamic-identities-and-secrets
Repository with demo code demonstrating Nomad Workload Identity and securely introducing dynamic identities and secrets to workloads in Nomad

Contains Terraform code to configure GCP Workload Identity Federation between GCP and Nomad, and configures a GCS bucket that a Nomad job gets access to.

Heavily inspired by the [GCP Workload Identity Federation](https://developer.hashicorp.com/nomad/tutorials/fed-workload-identity/integration-gcp) tutorial code.

More information, including deck used, on [my blog](https://atodorov.me/talks/nomad-workload-identity/).