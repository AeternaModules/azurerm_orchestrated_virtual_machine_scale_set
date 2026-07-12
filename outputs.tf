output "orchestrated_virtual_machine_scale_sets_additional_capabilities" {
  description = "Map of additional_capabilities values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.additional_capabilities }
}
output "orchestrated_virtual_machine_scale_sets_automatic_instance_repair" {
  description = "Map of automatic_instance_repair values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.automatic_instance_repair }
}
output "orchestrated_virtual_machine_scale_sets_boot_diagnostics" {
  description = "Map of boot_diagnostics values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.boot_diagnostics }
}
output "orchestrated_virtual_machine_scale_sets_capacity_reservation_group_id" {
  description = "Map of capacity_reservation_group_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.capacity_reservation_group_id }
}
output "orchestrated_virtual_machine_scale_sets_data_disk" {
  description = "Map of data_disk values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.data_disk }
}
output "orchestrated_virtual_machine_scale_sets_encryption_at_host_enabled" {
  description = "Map of encryption_at_host_enabled values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.encryption_at_host_enabled }
}
output "orchestrated_virtual_machine_scale_sets_eviction_policy" {
  description = "Map of eviction_policy values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.eviction_policy }
}
output "orchestrated_virtual_machine_scale_sets_extension" {
  description = "Map of extension values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.extension }
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_extension_operations_enabled" {
  description = "Map of extension_operations_enabled values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.extension_operations_enabled }
}
output "orchestrated_virtual_machine_scale_sets_extensions_time_budget" {
  description = "Map of extensions_time_budget values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.extensions_time_budget }
}
output "orchestrated_virtual_machine_scale_sets_identity" {
  description = "Map of identity values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.identity }
}
output "orchestrated_virtual_machine_scale_sets_instances" {
  description = "Map of instances values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.instances }
}
output "orchestrated_virtual_machine_scale_sets_license_type" {
  description = "Map of license_type values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.license_type }
}
output "orchestrated_virtual_machine_scale_sets_location" {
  description = "Map of location values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.location }
}
output "orchestrated_virtual_machine_scale_sets_max_bid_price" {
  description = "Map of max_bid_price values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.max_bid_price }
}
output "orchestrated_virtual_machine_scale_sets_name" {
  description = "Map of name values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.name }
}
output "orchestrated_virtual_machine_scale_sets_network_api_version" {
  description = "Map of network_api_version values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.network_api_version }
}
output "orchestrated_virtual_machine_scale_sets_network_interface" {
  description = "Map of network_interface values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.network_interface }
}
output "orchestrated_virtual_machine_scale_sets_os_disk" {
  description = "Map of os_disk values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.os_disk }
}
output "orchestrated_virtual_machine_scale_sets_os_profile" {
  description = "Map of os_profile values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.os_profile }
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_plan" {
  description = "Map of plan values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.plan }
}
output "orchestrated_virtual_machine_scale_sets_platform_fault_domain_count" {
  description = "Map of platform_fault_domain_count values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.platform_fault_domain_count }
}
output "orchestrated_virtual_machine_scale_sets_priority" {
  description = "Map of priority values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.priority }
}
output "orchestrated_virtual_machine_scale_sets_priority_mix" {
  description = "Map of priority_mix values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.priority_mix }
}
output "orchestrated_virtual_machine_scale_sets_proximity_placement_group_id" {
  description = "Map of proximity_placement_group_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.proximity_placement_group_id }
}
output "orchestrated_virtual_machine_scale_sets_resource_group_name" {
  description = "Map of resource_group_name values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.resource_group_name }
}
output "orchestrated_virtual_machine_scale_sets_rolling_upgrade_policy" {
  description = "Map of rolling_upgrade_policy values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.rolling_upgrade_policy }
}
output "orchestrated_virtual_machine_scale_sets_single_placement_group" {
  description = "Map of single_placement_group values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.single_placement_group }
}
output "orchestrated_virtual_machine_scale_sets_sku_name" {
  description = "Map of sku_name values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.sku_name }
}
output "orchestrated_virtual_machine_scale_sets_sku_profile" {
  description = "Map of sku_profile values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.sku_profile }
}
output "orchestrated_virtual_machine_scale_sets_source_image_id" {
  description = "Map of source_image_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.source_image_id }
}
output "orchestrated_virtual_machine_scale_sets_source_image_reference" {
  description = "Map of source_image_reference values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.source_image_reference }
}
output "orchestrated_virtual_machine_scale_sets_tags" {
  description = "Map of tags values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.tags }
}
output "orchestrated_virtual_machine_scale_sets_termination_notification" {
  description = "Map of termination_notification values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.termination_notification }
}
output "orchestrated_virtual_machine_scale_sets_unique_id" {
  description = "Map of unique_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.unique_id }
}
output "orchestrated_virtual_machine_scale_sets_upgrade_mode" {
  description = "Map of upgrade_mode values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.upgrade_mode }
}
output "orchestrated_virtual_machine_scale_sets_user_data_base64" {
  description = "Map of user_data_base64 values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.user_data_base64 }
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_zone_balance" {
  description = "Map of zone_balance values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.zone_balance }
}
output "orchestrated_virtual_machine_scale_sets_zones" {
  description = "Map of zones values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.zones }
}

