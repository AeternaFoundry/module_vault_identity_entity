resource "vault_identity_entity" "identity_entities" {
  for_each = var.identity_entities

  disabled          = each.value.disabled
  external_policies = each.value.external_policies
  metadata          = each.value.metadata
  name              = each.value.name
  namespace         = each.value.namespace
  policies          = each.value.policies
}

