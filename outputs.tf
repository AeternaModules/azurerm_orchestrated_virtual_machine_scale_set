output "orchestrated_virtual_machine_scale_sets" {
  description = "All orchestrated_virtual_machine_scale_set resources"
  value       = azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_additional_capabilities" {
  description = "List of additional_capabilities values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.additional_capabilities]
}
output "orchestrated_virtual_machine_scale_sets_automatic_instance_repair" {
  description = "List of automatic_instance_repair values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.automatic_instance_repair]
}
output "orchestrated_virtual_machine_scale_sets_boot_diagnostics" {
  description = "List of boot_diagnostics values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.boot_diagnostics]
}
output "orchestrated_virtual_machine_scale_sets_capacity_reservation_group_id" {
  description = "List of capacity_reservation_group_id values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.capacity_reservation_group_id]
}
output "orchestrated_virtual_machine_scale_sets_data_disk" {
  description = "List of data_disk values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.data_disk]
}
output "orchestrated_virtual_machine_scale_sets_encryption_at_host_enabled" {
  description = "List of encryption_at_host_enabled values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.encryption_at_host_enabled]
}
output "orchestrated_virtual_machine_scale_sets_eviction_policy" {
  description = "List of eviction_policy values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.eviction_policy]
}
output "orchestrated_virtual_machine_scale_sets_extension" {
  description = "List of extension values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.extension]
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_extension_operations_enabled" {
  description = "List of extension_operations_enabled values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.extension_operations_enabled]
}
output "orchestrated_virtual_machine_scale_sets_extensions_time_budget" {
  description = "List of extensions_time_budget values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.extensions_time_budget]
}
output "orchestrated_virtual_machine_scale_sets_identity" {
  description = "List of identity values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.identity]
}
output "orchestrated_virtual_machine_scale_sets_instances" {
  description = "List of instances values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.instances]
}
output "orchestrated_virtual_machine_scale_sets_license_type" {
  description = "List of license_type values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.license_type]
}
output "orchestrated_virtual_machine_scale_sets_location" {
  description = "List of location values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.location]
}
output "orchestrated_virtual_machine_scale_sets_max_bid_price" {
  description = "List of max_bid_price values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.max_bid_price]
}
output "orchestrated_virtual_machine_scale_sets_name" {
  description = "List of name values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.name]
}
output "orchestrated_virtual_machine_scale_sets_network_api_version" {
  description = "List of network_api_version values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.network_api_version]
}
output "orchestrated_virtual_machine_scale_sets_network_interface" {
  description = "List of network_interface values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.network_interface]
}
output "orchestrated_virtual_machine_scale_sets_os_disk" {
  description = "List of os_disk values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.os_disk]
}
output "orchestrated_virtual_machine_scale_sets_os_profile" {
  description = "List of os_profile values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.os_profile]
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_plan" {
  description = "List of plan values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.plan]
}
output "orchestrated_virtual_machine_scale_sets_platform_fault_domain_count" {
  description = "List of platform_fault_domain_count values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.platform_fault_domain_count]
}
output "orchestrated_virtual_machine_scale_sets_priority" {
  description = "List of priority values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.priority]
}
output "orchestrated_virtual_machine_scale_sets_priority_mix" {
  description = "List of priority_mix values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.priority_mix]
}
output "orchestrated_virtual_machine_scale_sets_proximity_placement_group_id" {
  description = "List of proximity_placement_group_id values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.proximity_placement_group_id]
}
output "orchestrated_virtual_machine_scale_sets_resource_group_name" {
  description = "List of resource_group_name values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.resource_group_name]
}
output "orchestrated_virtual_machine_scale_sets_rolling_upgrade_policy" {
  description = "List of rolling_upgrade_policy values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.rolling_upgrade_policy]
}
output "orchestrated_virtual_machine_scale_sets_single_placement_group" {
  description = "List of single_placement_group values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.single_placement_group]
}
output "orchestrated_virtual_machine_scale_sets_sku_name" {
  description = "List of sku_name values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.sku_name]
}
output "orchestrated_virtual_machine_scale_sets_sku_profile" {
  description = "List of sku_profile values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.sku_profile]
}
output "orchestrated_virtual_machine_scale_sets_source_image_id" {
  description = "List of source_image_id values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.source_image_id]
}
output "orchestrated_virtual_machine_scale_sets_source_image_reference" {
  description = "List of source_image_reference values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.source_image_reference]
}
output "orchestrated_virtual_machine_scale_sets_tags" {
  description = "List of tags values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.tags]
}
output "orchestrated_virtual_machine_scale_sets_termination_notification" {
  description = "List of termination_notification values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.termination_notification]
}
output "orchestrated_virtual_machine_scale_sets_unique_id" {
  description = "List of unique_id values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.unique_id]
}
output "orchestrated_virtual_machine_scale_sets_upgrade_mode" {
  description = "List of upgrade_mode values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.upgrade_mode]
}
output "orchestrated_virtual_machine_scale_sets_user_data_base64" {
  description = "List of user_data_base64 values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.user_data_base64]
  sensitive   = true
}
output "orchestrated_virtual_machine_scale_sets_zone_balance" {
  description = "List of zone_balance values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.zone_balance]
}
output "orchestrated_virtual_machine_scale_sets_zones" {
  description = "List of zones values across all orchestrated_virtual_machine_scale_sets"
  value       = [for k, v in azurerm_orchestrated_virtual_machine_scale_set.orchestrated_virtual_machine_scale_sets : v.zones]
}

