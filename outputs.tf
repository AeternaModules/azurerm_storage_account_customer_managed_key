output "storage_account_customer_managed_keys_federated_identity_client_id" {
  description = "Map of federated_identity_client_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.federated_identity_client_id }
}
output "storage_account_customer_managed_keys_key_name" {
  description = "Map of key_name values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.key_name }
}
output "storage_account_customer_managed_keys_key_vault_id" {
  description = "Map of key_vault_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.key_vault_id }
}
output "storage_account_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.key_vault_key_id }
}
output "storage_account_customer_managed_keys_key_vault_uri" {
  description = "Map of key_vault_uri values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.key_vault_uri }
}
output "storage_account_customer_managed_keys_key_version" {
  description = "Map of key_version values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.key_version }
}
output "storage_account_customer_managed_keys_managed_hsm_key_id" {
  description = "Map of managed_hsm_key_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.managed_hsm_key_id }
}
output "storage_account_customer_managed_keys_storage_account_id" {
  description = "Map of storage_account_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.storage_account_id }
}
output "storage_account_customer_managed_keys_user_assigned_identity_id" {
  description = "Map of user_assigned_identity_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.user_assigned_identity_id }
}

