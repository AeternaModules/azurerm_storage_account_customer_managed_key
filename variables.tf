variable "storage_account_customer_managed_keys" {
  description = <<EOT
Map of storage_account_customer_managed_keys, attributes below
Required:
    - storage_account_id
Optional:
    - federated_identity_client_id
    - key_name
    - key_vault_id
    - key_vault_key_id
    - key_vault_uri
    - key_version
    - managed_hsm_key_id
    - user_assigned_identity_id
EOT

  type = map(object({
    storage_account_id           = string
    federated_identity_client_id = optional(string)
    key_name                     = optional(string)
    key_vault_id                 = optional(string)
    key_vault_key_id             = optional(string)
    key_vault_uri                = optional(string)
    key_version                  = optional(string)
    managed_hsm_key_id           = optional(string)
    user_assigned_identity_id    = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_account_customer_managed_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: federated_identity_client_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

