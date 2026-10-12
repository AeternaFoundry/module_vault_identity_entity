variable "identity_entities" {
  description = <<EOT
Map of identity_entities, attributes below
Optional:
    - disabled
    - external_policies
    - metadata
    - name
    - namespace
    - policies
EOT

  type = map(object({
    disabled          = optional(bool)
    external_policies = optional(bool)
    metadata          = optional(map(string))
    name              = optional(string)
    namespace         = optional(string)
    policies          = optional(set(string))
  }))
}

