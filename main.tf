resource "datadog_integration_fastly_account" "integration_fastly_accounts" {
  for_each = var.integration_fastly_accounts

  name               = each.value.name
  api_key            = each.value.api_key
  api_key_wo         = each.value.api_key_wo
  api_key_wo_version = each.value.api_key_wo_version
}

