variable "integration_fastly_accounts" {
  description = <<EOT
Map of integration_fastly_accounts, attributes below
Required:
    - name
Optional:
    - api_key
    - api_key_wo
    - api_key_wo_version
EOT

  type = map(object({
    name               = string
    api_key            = optional(string)
    api_key_wo         = optional(string)
    api_key_wo_version = optional(string)
  }))
}

