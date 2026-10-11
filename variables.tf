variable "vertex_ai_featurestores" {
  description = <<EOT
Map of vertex_ai_featurestores, attributes below
Optional:
    - deletion_policy
    - force_destroy
    - labels
    - name
    - project
    - region
    - encryption_spec (block):
        - kms_key_name (required)
    - online_serving_config (block):
        - fixed_node_count (optional)
        - scaling (optional, block):
            - max_node_count (required)
            - min_node_count (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy = optional(string)
    force_destroy   = optional(bool)
    labels          = optional(map(string))
    name            = optional(string)
    project         = optional(string)
    region          = optional(string)
    encryption_spec = optional(object({
      kms_key_name = string
    }))
    online_serving_config = optional(object({
      fixed_node_count = optional(number)
      scaling = optional(object({
        max_node_count = number
        min_node_count = number
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

