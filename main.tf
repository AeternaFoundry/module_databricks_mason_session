resource "databricks_mason_session" "mason_sessions" {
  for_each = var.mason_sessions

  actor_id          = each.value.actor_id
  parent            = each.value.parent
  metadata          = each.value.metadata
  parent_session_id = each.value.parent_session_id
  provider_config   = each.value.provider_config
  session_id        = each.value.session_id
}

