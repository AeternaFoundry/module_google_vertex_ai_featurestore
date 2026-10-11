resource "google_vertex_ai_featurestore" "vertex_ai_featurestores" {
  for_each = var.vertex_ai_featurestores

  deletion_policy = each.value.deletion_policy
  force_destroy   = each.value.force_destroy
  labels          = each.value.labels
  name            = each.value.name
  project         = each.value.project
  region          = each.value.region

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      kms_key_name = encryption_spec.value.kms_key_name
    }
  }

  dynamic "online_serving_config" {
    for_each = each.value.online_serving_config != null ? [each.value.online_serving_config] : []
    content {
      fixed_node_count = online_serving_config.value.fixed_node_count
      dynamic "scaling" {
        for_each = online_serving_config.value.scaling != null ? [online_serving_config.value.scaling] : []
        content {
          max_node_count = scaling.value.max_node_count
          min_node_count = scaling.value.min_node_count
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

