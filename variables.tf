variable "project" {
  description = "The GCP project ID to use."
}

variable "region" {
  description = "The GCP region to use."
}

variable "issuer_uri" {
  description = "OIDC issuer, as defined in oidc_issuer on the Nomad servers."
}

variable "jwks_url" {
  description = "URL where the JWKS config can be collected from. Nomad makes it available on $nomad-address/.well-known/jwks.json"
}
