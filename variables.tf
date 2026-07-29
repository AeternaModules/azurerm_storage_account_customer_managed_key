variable "storage_account_customer_managed_keys" {
  description = <<EOT
Map of storage_account_customer_managed_keys, attributes below
Required:
    - key_vault_key_id
    - storage_account_id
Optional:
    - federated_identity_client_id
    - user_assigned_identity_id
EOT

  type = map(object({
    key_vault_key_id             = string
    storage_account_id           = string
    federated_identity_client_id = optional(string)
    user_assigned_identity_id    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_account_customer_managed_keys : (
        v.federated_identity_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.federated_identity_client_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

