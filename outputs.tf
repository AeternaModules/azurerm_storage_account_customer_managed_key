output "storage_account_customer_managed_keys" {
  description = "All storage_account_customer_managed_key resources"
  value       = azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys
}
output "storage_account_customer_managed_keys_federated_identity_client_id" {
  description = "List of federated_identity_client_id values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.federated_identity_client_id]
}
output "storage_account_customer_managed_keys_key_name" {
  description = "List of key_name values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.key_name]
}
output "storage_account_customer_managed_keys_key_vault_id" {
  description = "List of key_vault_id values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.key_vault_id]
}
output "storage_account_customer_managed_keys_key_vault_key_id" {
  description = "List of key_vault_key_id values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.key_vault_key_id]
}
output "storage_account_customer_managed_keys_key_vault_uri" {
  description = "List of key_vault_uri values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.key_vault_uri]
}
output "storage_account_customer_managed_keys_key_version" {
  description = "List of key_version values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.key_version]
}
output "storage_account_customer_managed_keys_managed_hsm_key_id" {
  description = "List of managed_hsm_key_id values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.managed_hsm_key_id]
}
output "storage_account_customer_managed_keys_storage_account_id" {
  description = "List of storage_account_id values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.storage_account_id]
}
output "storage_account_customer_managed_keys_user_assigned_identity_id" {
  description = "List of user_assigned_identity_id values across all storage_account_customer_managed_keys"
  value       = [for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : v.user_assigned_identity_id]
}

