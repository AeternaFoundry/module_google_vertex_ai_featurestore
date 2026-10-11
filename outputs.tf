output "vertex_ai_featurestores_id" {
  description = "Map of id values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_featurestores_create_time" {
  description = "Map of create_time values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no create_time are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vertex_ai_featurestores_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_featurestores_effective_labels" {
  description = "Map of effective_labels values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no effective_labels are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "vertex_ai_featurestores_encryption_spec" {
  description = "Map of encryption_spec values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no encryption_spec are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "vertex_ai_featurestores_etag" {
  description = "Map of etag values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no etag are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "vertex_ai_featurestores_force_destroy" {
  description = "Map of force_destroy values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no force_destroy are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.force_destroy if v.force_destroy != null }
}
output "vertex_ai_featurestores_labels" {
  description = "Map of labels values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no labels are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "vertex_ai_featurestores_name" {
  description = "Map of name values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_featurestores_online_serving_config" {
  description = "Map of online_serving_config values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no online_serving_config are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => one(v.online_serving_config) if v.online_serving_config != null && length(v.online_serving_config) > 0 }
}
output "vertex_ai_featurestores_project" {
  description = "Map of project values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vertex_ai_featurestores_region" {
  description = "Map of region values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no region are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vertex_ai_featurestores_terraform_labels" {
  description = "Map of terraform_labels values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no terraform_labels are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "vertex_ai_featurestores_update_time" {
  description = "Map of update_time values across all vertex_ai_featurestores, keyed the same as var.vertex_ai_featurestores except keys with no update_time are omitted"
  value       = { for k, v in google_vertex_ai_featurestore.vertex_ai_featurestores : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

