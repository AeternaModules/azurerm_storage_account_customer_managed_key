output "storage_account_customer_managed_keys_id" {
  description = "Map of id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_account_customer_managed_keys_federated_identity_client_id" {
  description = "Map of federated_identity_client_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.federated_identity_client_id if v.federated_identity_client_id != null && length(v.federated_identity_client_id) > 0 }
}
output "storage_account_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.key_vault_key_id if v.key_vault_key_id != null && length(v.key_vault_key_id) > 0 }
}
output "storage_account_customer_managed_keys_storage_account_id" {
  description = "Map of storage_account_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "storage_account_customer_managed_keys_user_assigned_identity_id" {
  description = "Map of user_assigned_identity_id values across all storage_account_customer_managed_keys, keyed the same as var.storage_account_customer_managed_keys"
  value       = { for k, v in azurerm_storage_account_customer_managed_key.storage_account_customer_managed_keys : k => v.user_assigned_identity_id if v.user_assigned_identity_id != null && length(v.user_assigned_identity_id) > 0 }
}

