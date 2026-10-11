variable "mason_sessions" {
  description = <<EOT
Map of mason_sessions, attributes below
Required:
    - actor_id
    - parent
Optional:
    - metadata
    - parent_session_id
    - provider_config
    - session_id
EOT

  type = map(object({
    actor_id          = string
    parent            = string
    metadata          = optional(map(string))
    parent_session_id = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    session_id = optional(string)
  }))
}

