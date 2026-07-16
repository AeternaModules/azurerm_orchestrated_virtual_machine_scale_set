output "orchestrated_virtual_machine_scale_sets_id" {
  description = "Map of id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_additional_capabilities" {
  description = "Map of additional_capabilities values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.additional_capabilities if v.additional_capabilities != null && length(v.additional_capabilities) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_automatic_instance_repair" {
  description = "Map of automatic_instance_repair values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.automatic_instance_repair if v.automatic_instance_repair != null && length(v.automatic_instance_repair) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_boot_diagnostics" {
  description = "Map of boot_diagnostics values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.boot_diagnostics if v.boot_diagnostics != null && length(v.boot_diagnostics) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_capacity_reservation_group_id" {
  description = "Map of capacity_reservation_group_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.capacity_reservation_group_id if v.capacity_reservation_group_id != null && length(v.capacity_reservation_group_id) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_data_disk" {
  description = "Map of data_disk values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.data_disk if v.data_disk != null && length(v.data_disk) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_encryption_at_host_enabled" {
  description = "Map of encryption_at_host_enabled values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.encryption_at_host_enabled if v.encryption_at_host_enabled != null }
}
output "orchestrated_virtual_machine_scale_sets_eviction_policy" {
  description = "Map of eviction_policy values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.eviction_policy if v.eviction_policy != null && length(v.eviction_policy) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_extension" {
  description = "Map of extension values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.extension if v.extension != null && length(v.extension) > 0 }
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_extension_operations_enabled" {
  description = "Map of extension_operations_enabled values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.extension_operations_enabled if v.extension_operations_enabled != null }
}
output "orchestrated_virtual_machine_scale_sets_extensions_time_budget" {
  description = "Map of extensions_time_budget values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.extensions_time_budget if v.extensions_time_budget != null && length(v.extensions_time_budget) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_identity" {
  description = "Map of identity values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_instances" {
  description = "Map of instances values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.instances if v.instances != null }
}
output "orchestrated_virtual_machine_scale_sets_license_type" {
  description = "Map of license_type values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.license_type if v.license_type != null && length(v.license_type) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_location" {
  description = "Map of location values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.location if v.location != null && length(v.location) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_max_bid_price" {
  description = "Map of max_bid_price values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.max_bid_price if v.max_bid_price != null }
}
output "orchestrated_virtual_machine_scale_sets_name" {
  description = "Map of name values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_network_api_version" {
  description = "Map of network_api_version values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.network_api_version if v.network_api_version != null && length(v.network_api_version) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_network_interface" {
  description = "Map of network_interface values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.network_interface if v.network_interface != null && length(v.network_interface) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_os_disk" {
  description = "Map of os_disk values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.os_disk if v.os_disk != null && length(v.os_disk) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_os_profile" {
  description = "Map of os_profile values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.os_profile if v.os_profile != null && length(v.os_profile) > 0 }
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_plan" {
  description = "Map of plan values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.plan if v.plan != null && length(v.plan) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_platform_fault_domain_count" {
  description = "Map of platform_fault_domain_count values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.platform_fault_domain_count if v.platform_fault_domain_count != null }
}
output "orchestrated_virtual_machine_scale_sets_priority" {
  description = "Map of priority values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.priority if v.priority != null && length(v.priority) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_priority_mix" {
  description = "Map of priority_mix values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.priority_mix if v.priority_mix != null && length(v.priority_mix) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_proximity_placement_group_id" {
  description = "Map of proximity_placement_group_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.proximity_placement_group_id if v.proximity_placement_group_id != null && length(v.proximity_placement_group_id) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_resource_group_name" {
  description = "Map of resource_group_name values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_rolling_upgrade_policy" {
  description = "Map of rolling_upgrade_policy values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.rolling_upgrade_policy if v.rolling_upgrade_policy != null && length(v.rolling_upgrade_policy) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_single_placement_group" {
  description = "Map of single_placement_group values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.single_placement_group if v.single_placement_group != null }
}
output "orchestrated_virtual_machine_scale_sets_sku_name" {
  description = "Map of sku_name values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_sku_profile" {
  description = "Map of sku_profile values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.sku_profile if v.sku_profile != null && length(v.sku_profile) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_source_image_id" {
  description = "Map of source_image_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.source_image_id if v.source_image_id != null && length(v.source_image_id) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_source_image_reference" {
  description = "Map of source_image_reference values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.source_image_reference if v.source_image_reference != null && length(v.source_image_reference) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_tags" {
  description = "Map of tags values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_termination_notification" {
  description = "Map of termination_notification values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.termination_notification if v.termination_notification != null && length(v.termination_notification) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_unique_id" {
  description = "Map of unique_id values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.unique_id if v.unique_id != null && length(v.unique_id) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_upgrade_mode" {
  description = "Map of upgrade_mode values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.upgrade_mode if v.upgrade_mode != null && length(v.upgrade_mode) > 0 }
}
output "orchestrated_virtual_machine_scale_sets_user_data_base64" {
  description = "Map of user_data_base64 values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.user_data_base64 if v.user_data_base64 != null && length(v.user_data_base64) > 0 }
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_zone_balance" {
  description = "Map of zone_balance values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.zone_balance if v.zone_balance != null }
}
output "orchestrated_virtual_machine_scale_sets_zones" {
  description = "Map of zones values across all orchestrated_virtual_machine_scale_sets, keyed the same as var.orchestrated_virtual_machine_scale_sets"
  value       = { for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

