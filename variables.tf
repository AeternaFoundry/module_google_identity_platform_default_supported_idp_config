variable "identity_platform_default_supported_idp_configs" {
  description = <<EOT
Map of identity_platform_default_supported_idp_configs, attributes below
Required:
    - client_id
    - client_secret
    - idp_id
Optional:
    - deletion_policy
    - enabled
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    client_id       = string
    client_secret   = string
    idp_id          = string
    deletion_policy = optional(string)
    enabled         = optional(bool)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

