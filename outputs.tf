output "identity_entities_id" {
  description = "Map of id values across all identity_entities, keyed the same as var.identity_entities except keys with no id are omitted"
  value       = { for k, v in vault_identity_entity.identity_entities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_entities_disabled" {
  description = "Map of disabled values across all identity_entities, keyed the same as var.identity_entities except keys with no disabled are omitted"
  value       = { for k, v in vault_identity_entity.identity_entities : k => v.disabled if v.disabled != null }
}
output "identity_entities_external_policies" {
  description = "Map of external_policies values across all identity_entities, keyed the same as var.identity_entities except keys with no external_policies are omitted"
  value       = { for k, v in vault_identity_entity.identity_entities : k => v.external_policies if v.external_policies != null }
}
output "identity_entities_metadata" {
  description = "Map of metadata values across all identity_entities, keyed the same as var.identity_entities except keys with no metadata are omitted"
  value       = { for k, v in vault_identity_entity.identity_entities : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "identity_entities_name" {
  description = "Map of name values across all identity_entities, keyed the same as var.identity_entities except keys with no name are omitted"
  value       = { for k, v in vault_identity_entity.identity_entities : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_entities_namespace" {
  description = "Map of namespace values across all identity_entities, keyed the same as var.identity_entities except keys with no namespace are omitted"
  value       = { for k, v in vault_identity_entity.identity_entities : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "identity_entities_policies" {
  description = "Map of policies values across all identity_entities, keyed the same as var.identity_entities except keys with no policies are omitted"
  value       = { for k, v in vault_identity_entity.identity_entities : k => v.policies if v.policies != null && length(v.policies) > 0 }
}

