output "mysql_channels_lookup_id" {
  description = "Map of id values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_channels_lookup_channel_id" {
  description = "Map of channel_id values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no channel_id are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.channel_id if v.channel_id != null && length(v.channel_id) > 0 }
}
output "mysql_channels_lookup_channels" {
  description = "Map of channels values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no channels are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.channels if v.channels != null && length(v.channels) > 0 }
}
output "mysql_channels_lookup_compartment_id" {
  description = "Map of compartment_id values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "mysql_channels_lookup_db_system_id" {
  description = "Map of db_system_id values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no db_system_id are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}
output "mysql_channels_lookup_display_name" {
  description = "Map of display_name values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "mysql_channels_lookup_filter" {
  description = "Map of filter values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "mysql_channels_lookup_is_enabled" {
  description = "Map of is_enabled values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no is_enabled are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.is_enabled if v.is_enabled != null }
}
output "mysql_channels_lookup_state" {
  description = "Map of state values across all mysql_channels_lookup, keyed the same as var.mysql_channels_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_mysql_channels.mysql_channels_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

