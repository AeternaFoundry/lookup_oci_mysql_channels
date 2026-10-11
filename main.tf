data "oci_mysql_channels" "mysql_channels_lookup" {
  for_each = var.mysql_channels_lookup

  compartment_id = each.value.compartment_id
  channel_id     = each.value.channel_id
  db_system_id   = each.value.db_system_id
  display_name   = each.value.display_name
  is_enabled     = each.value.is_enabled
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

