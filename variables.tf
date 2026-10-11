variable "mysql_channels_lookup" {
  description = <<EOT
Map of mysql_channels_lookup, attributes below
Required:
    - compartment_id
Optional:
    - channel_id
    - db_system_id
    - display_name
    - is_enabled
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    channel_id     = optional(string)
    db_system_id   = optional(string)
    display_name   = optional(string)
    is_enabled     = optional(bool)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

