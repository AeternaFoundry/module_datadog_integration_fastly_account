output "integration_fastly_accounts_id" {
  description = "Map of id values across all integration_fastly_accounts, keyed the same as var.integration_fastly_accounts except keys with no id are omitted"
  value       = { for k, v in datadog_integration_fastly_account.integration_fastly_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_fastly_accounts_api_key" {
  description = "Map of api_key values across all integration_fastly_accounts, keyed the same as var.integration_fastly_accounts except keys with no api_key are omitted"
  value       = { for k, v in datadog_integration_fastly_account.integration_fastly_accounts : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
  sensitive   = true
}
output "integration_fastly_accounts_api_key_wo_version" {
  description = "Map of api_key_wo_version values across all integration_fastly_accounts, keyed the same as var.integration_fastly_accounts except keys with no api_key_wo_version are omitted"
  value       = { for k, v in datadog_integration_fastly_account.integration_fastly_accounts : k => v.api_key_wo_version if v.api_key_wo_version != null && length(v.api_key_wo_version) > 0 }
}
output "integration_fastly_accounts_name" {
  description = "Map of name values across all integration_fastly_accounts, keyed the same as var.integration_fastly_accounts except keys with no name are omitted"
  value       = { for k, v in datadog_integration_fastly_account.integration_fastly_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}

