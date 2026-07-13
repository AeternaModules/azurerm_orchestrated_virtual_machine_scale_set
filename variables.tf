variable "orchestrated_virtual_machine_scale_sets" {
  description = <<EOT
Map of orchestrated_virtual_machine_scale_sets, attributes below
Required:
    - location
    - name
    - platform_fault_domain_count
    - resource_group_name
Optional:
    - capacity_reservation_group_id
    - encryption_at_host_enabled
    - eviction_policy
    - extension_operations_enabled
    - extensions_time_budget
    - instances
    - license_type
    - max_bid_price
    - network_api_version
    - priority
    - proximity_placement_group_id
    - single_placement_group
    - sku_name
    - source_image_id
    - tags
    - upgrade_mode
    - user_data_base64
    - user_data_base64_key_vault_id (alternative to user_data_base64 - read from Key Vault instead)
    - user_data_base64_key_vault_secret_name (alternative to user_data_base64 - read from Key Vault instead)
    - zone_balance
    - zones
    - additional_capabilities (block):
        - ultra_ssd_enabled (optional)
    - automatic_instance_repair (block):
        - action (optional)
        - enabled (required)
        - grace_period (optional)
    - boot_diagnostics (block):
        - storage_account_uri (optional)
    - data_disk (block):
        - caching (required)
        - create_option (optional)
        - disk_encryption_set_id (optional)
        - disk_size_gb (optional)
        - lun (optional)
        - storage_account_type (required)
        - ultra_ssd_disk_iops_read_write (optional)
        - ultra_ssd_disk_mbps_read_write (optional)
        - write_accelerator_enabled (optional)
    - extension (block):
        - auto_upgrade_minor_version_enabled (optional)
        - extensions_to_provision_after_vm_creation (optional)
        - failure_suppression_enabled (optional)
        - force_extension_execution_on_change (optional)
        - name (required)
        - protected_settings (optional)
        - protected_settings_from_key_vault (optional, block):
            - secret_url (required)
            - source_vault_id (required)
        - publisher (required)
        - settings (optional)
        - type (required)
        - type_handler_version (required)
    - identity (block):
        - identity_ids (required)
        - type (required)
    - network_interface (block):
        - auxiliary_mode (optional)
        - auxiliary_sku (optional)
        - dns_servers (optional)
        - enable_accelerated_networking (optional)
        - enable_ip_forwarding (optional)
        - ip_configuration (required, block):
            - application_gateway_backend_address_pool_ids (optional)
            - application_security_group_ids (optional)
            - load_balancer_backend_address_pool_ids (optional)
            - name (required)
            - primary (optional)
            - public_ip_address (optional, block):
                - domain_name_label (optional)
                - idle_timeout_in_minutes (optional)
                - ip_tag (optional, block):
                    - tag (required)
                    - type (required)
                - name (required)
                - public_ip_prefix_id (optional)
                - sku_name (optional)
                - version (optional)
            - subnet_id (optional)
            - version (optional)
        - name (required)
        - network_security_group_id (optional)
        - primary (optional)
    - os_disk (block):
        - caching (required)
        - diff_disk_settings (optional, block):
            - option (required)
            - placement (optional)
        - disk_encryption_set_id (optional)
        - disk_size_gb (optional)
        - storage_account_type (required)
        - write_accelerator_enabled (optional)
    - os_profile (block):
        - custom_data (optional)
        - linux_configuration (optional, block):
            - admin_password (optional)
            - admin_ssh_key (optional, block):
                - public_key (required)
                - username (required)
            - admin_username (required)
            - computer_name_prefix (optional)
            - disable_password_authentication (optional)
            - patch_assessment_mode (optional)
            - patch_mode (optional)
            - provision_vm_agent (optional)
            - secret (optional, block):
                - certificate (required, block):
                    - url (required)
                - key_vault_id (required)
        - windows_configuration (optional, block):
            - additional_unattend_content (optional, block):
                - content (required)
                - setting (required)
            - admin_password (required)
            - admin_username (required)
            - computer_name_prefix (optional)
            - enable_automatic_updates (optional)
            - hotpatching_enabled (optional)
            - patch_assessment_mode (optional)
            - patch_mode (optional)
            - provision_vm_agent (optional)
            - secret (optional, block):
                - certificate (required, block):
                    - store (required)
                    - url (required)
                - key_vault_id (required)
            - timezone (optional)
            - winrm_listener (optional, block):
                - certificate_url (optional)
                - protocol (required)
    - plan (block):
        - name (required)
        - product (required)
        - publisher (required)
    - priority_mix (block):
        - base_regular_count (optional)
        - regular_percentage_above_base (optional)
    - rolling_upgrade_policy (block):
        - cross_zone_upgrades_enabled (optional)
        - max_batch_instance_percent (required)
        - max_unhealthy_instance_percent (required)
        - max_unhealthy_upgraded_instance_percent (required)
        - maximum_surge_instances_enabled (optional)
        - pause_time_between_batches (required)
        - prioritize_unhealthy_instances_enabled (optional)
    - sku_profile (block):
        - allocation_strategy (required)
        - virtual_machine_size (optional, block):
            - name (required)
            - rank (optional)
        - vm_sizes (optional)
    - source_image_reference (block):
        - offer (required)
        - publisher (required)
        - sku (required)
        - version (required)
    - termination_notification (block):
        - enabled (required)
        - timeout (optional)
EOT

  type = map(object({
    location                               = string
    name                                   = string
    platform_fault_domain_count            = number
    resource_group_name                    = string
    user_data_base64                       = optional(string)
    user_data_base64_key_vault_id          = optional(string)
    user_data_base64_key_vault_secret_name = optional(string)
    upgrade_mode                           = optional(string)
    tags                                   = optional(map(string))
    source_image_id                        = optional(string)
    sku_name                               = optional(string)
    single_placement_group                 = optional(bool)
    proximity_placement_group_id           = optional(string)
    priority                               = optional(string)
    max_bid_price                          = optional(number)
    zone_balance                           = optional(bool)
    license_type                           = optional(string)
    instances                              = optional(number)
    extensions_time_budget                 = optional(string)
    extension_operations_enabled           = optional(bool)
    eviction_policy                        = optional(string)
    encryption_at_host_enabled             = optional(bool)
    capacity_reservation_group_id          = optional(string)
    network_api_version                    = optional(string)
    zones                                  = optional(set(string))
    additional_capabilities = optional(object({
      ultra_ssd_enabled = optional(bool)
    }))
    automatic_instance_repair = optional(object({
      action       = optional(string)
      enabled      = bool
      grace_period = optional(string)
    }))
    boot_diagnostics = optional(object({
      storage_account_uri = optional(string)
    }))
    data_disk = optional(list(object({
      caching                        = string
      create_option                  = optional(string)
      disk_encryption_set_id         = optional(string)
      disk_size_gb                   = optional(number)
      lun                            = optional(number)
      storage_account_type           = string
      ultra_ssd_disk_iops_read_write = optional(number)
      ultra_ssd_disk_mbps_read_write = optional(number)
      write_accelerator_enabled      = optional(bool)
    })))
    extension = optional(list(object({
      auto_upgrade_minor_version_enabled        = optional(bool)
      extensions_to_provision_after_vm_creation = optional(list(string))
      failure_suppression_enabled               = optional(bool)
      force_extension_execution_on_change       = optional(string)
      name                                      = string
      protected_settings                        = optional(string)
      protected_settings_from_key_vault = optional(object({
        secret_url      = string
        source_vault_id = string
      }))
      publisher            = string
      settings             = optional(string)
      type                 = string
      type_handler_version = string
    })))
    identity = optional(object({
      identity_ids = set(string)
      type         = string
    }))
    network_interface = optional(list(object({
      auxiliary_mode                = optional(string)
      auxiliary_sku                 = optional(string)
      dns_servers                   = optional(list(string))
      enable_accelerated_networking = optional(bool)
      enable_ip_forwarding          = optional(bool)
      ip_configuration = list(object({
        application_gateway_backend_address_pool_ids = optional(set(string))
        application_security_group_ids               = optional(set(string))
        load_balancer_backend_address_pool_ids       = optional(set(string))
        name                                         = string
        primary                                      = optional(bool)
        public_ip_address = optional(list(object({
          domain_name_label       = optional(string)
          idle_timeout_in_minutes = optional(number)
          ip_tag = optional(list(object({
            tag  = string
            type = string
          })))
          name                = string
          public_ip_prefix_id = optional(string)
          sku_name            = optional(string)
          version             = optional(string)
        })))
        subnet_id = optional(string)
        version   = optional(string)
      }))
      name                      = string
      network_security_group_id = optional(string)
      primary                   = optional(bool)
    })))
    os_disk = optional(object({
      caching = string
      diff_disk_settings = optional(object({
        option    = string
        placement = optional(string)
      }))
      disk_encryption_set_id    = optional(string)
      disk_size_gb              = optional(number)
      storage_account_type      = string
      write_accelerator_enabled = optional(bool)
    }))
    os_profile = optional(object({
      custom_data = optional(string)
      linux_configuration = optional(object({
        admin_password = optional(string)
        admin_ssh_key = optional(list(object({
          public_key = string
          username   = string
        })))
        admin_username                  = string
        computer_name_prefix            = optional(string)
        disable_password_authentication = optional(bool)
        patch_assessment_mode           = optional(string)
        patch_mode                      = optional(string)
        provision_vm_agent              = optional(bool)
        secret = optional(list(object({
          certificate = list(object({
            url = string
          }))
          key_vault_id = string
        })))
      }))
      windows_configuration = optional(object({
        additional_unattend_content = optional(list(object({
          content = string
          setting = string
        })))
        admin_password           = string
        admin_username           = string
        computer_name_prefix     = optional(string)
        enable_automatic_updates = optional(bool)
        hotpatching_enabled      = optional(bool)
        patch_assessment_mode    = optional(string)
        patch_mode               = optional(string)
        provision_vm_agent       = optional(bool)
        secret = optional(list(object({
          certificate = list(object({
            store = string
            url   = string
          }))
          key_vault_id = string
        })))
        timezone = optional(string)
        winrm_listener = optional(list(object({
          certificate_url = optional(string)
          protocol        = string
        })))
      }))
    }))
    plan = optional(object({
      name      = string
      product   = string
      publisher = string
    }))
    priority_mix = optional(object({
      base_regular_count            = optional(number)
      regular_percentage_above_base = optional(number)
    }))
    rolling_upgrade_policy = optional(object({
      cross_zone_upgrades_enabled             = optional(bool)
      max_batch_instance_percent              = number
      max_unhealthy_instance_percent          = number
      max_unhealthy_upgraded_instance_percent = number
      maximum_surge_instances_enabled         = optional(bool)
      pause_time_between_batches              = string
      prioritize_unhealthy_instances_enabled  = optional(bool)
    }))
    sku_profile = optional(object({
      allocation_strategy = string
      virtual_machine_size = optional(list(object({
        name = string
        rank = optional(number)
      })))
      vm_sizes = optional(set(string))
    }))
    source_image_reference = optional(object({
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }))
    termination_notification = optional(object({
      enabled = bool
      timeout = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (length(item.ip_configuration) >= 1)])
      )
    ])
    error_message = "Each ip_configuration list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.os_profile == null || (v.os_profile.linux_configuration == null || (v.os_profile.linux_configuration.secret == null || alltrue([for item in v.os_profile.linux_configuration.secret : (length(item.certificate) >= 1)])))
      )
    ])
    error_message = "Each certificate list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.os_profile == null || (v.os_profile.windows_configuration == null || (v.os_profile.windows_configuration.secret == null || alltrue([for item in v.os_profile.windows_configuration.secret : (length(item.certificate) >= 1)])))
      )
    ])
    error_message = "Each certificate list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.sku_profile == null || (v.sku_profile.virtual_machine_size == null || (length(v.sku_profile.virtual_machine_size) <= 5))
      )
    ])
    error_message = "Each virtual_machine_size list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (alltrue([for item in item.ip_configuration : (length(item.name) > 0)]))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (alltrue([for item in item.ip_configuration : (item.public_ip_address == null || alltrue([for item in item.public_ip_address : (length(item.name) > 0)]))]))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (alltrue([for item in item.ip_configuration : (item.public_ip_address == null || alltrue([for item in item.public_ip_address : (item.idle_timeout_in_minutes == null || (item.idle_timeout_in_minutes >= 4 && item.idle_timeout_in_minutes <= 32))]))]))])
      )
    ])
    error_message = "must be between 4 and 32"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (alltrue([for item in item.ip_configuration : (item.public_ip_address == null || alltrue([for item in item.public_ip_address : (item.ip_tag == null || alltrue([for item in item.ip_tag : (length(item.tag) > 0)]))]))]))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (alltrue([for item in item.ip_configuration : (item.public_ip_address == null || alltrue([for item in item.public_ip_address : (item.ip_tag == null || alltrue([for item in item.ip_tag : (length(item.type) > 0)]))]))]))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.network_interface == null || alltrue([for item in v.network_interface : (item.dns_servers == null || (alltrue([for x in item.dns_servers : length(x) > 0])))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.os_disk == null || (v.os_disk.disk_size_gb == null || (v.os_disk.disk_size_gb >= 0 && v.os_disk.disk_size_gb <= 4095))
      )
    ])
    error_message = "must be between 0 and 4095"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.instances == null || (v.instances >= 0 && v.instances <= 1000)
      )
    ])
    error_message = "must be between 0 and 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.sku_profile == null || (v.sku_profile.virtual_machine_size == null || alltrue([for item in v.sku_profile.virtual_machine_size : (item.rank == null || (item.rank >= 1 && item.rank <= 3))]))
      )
    ])
    error_message = "must be between 1 and 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.os_profile == null || (v.os_profile.custom_data == null || (can(base64decode(v.os_profile.custom_data))))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.os_profile == null || (v.os_profile.linux_configuration == null || (v.os_profile.linux_configuration.admin_ssh_key == null || alltrue([for item in v.os_profile.linux_configuration.admin_ssh_key : (length(item.username) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.data_disk == null || alltrue([for item in v.data_disk : (item.disk_size_gb == null || (item.disk_size_gb >= 1 && item.disk_size_gb <= 32767))])
      )
    ])
    error_message = "must be between 1 and 32767"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.data_disk == null || alltrue([for item in v.data_disk : (item.lun == null || (item.lun >= 0 && item.lun <= 2000))])
      )
    ])
    error_message = "must be between 0 and 2000"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.data_disk == null || alltrue([for item in v.data_disk : (item.ultra_ssd_disk_iops_read_write == null || (item.ultra_ssd_disk_iops_read_write >= 1))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.data_disk == null || alltrue([for item in v.data_disk : (item.ultra_ssd_disk_mbps_read_write == null || (item.ultra_ssd_disk_mbps_read_write >= 1))])
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.extension == null || alltrue([for item in v.extension : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.extension == null || alltrue([for item in v.extension : (length(item.publisher) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.extension == null || alltrue([for item in v.extension : (length(item.type) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.extension == null || alltrue([for item in v.extension : (length(item.type_handler_version) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.extension == null || alltrue([for item in v.extension : (item.protected_settings == null || (can(jsondecode(item.protected_settings))))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.extension == null || alltrue([for item in v.extension : (item.extensions_to_provision_after_vm_creation == null || (alltrue([for x in item.extensions_to_provision_after_vm_creation : length(x) > 0])))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.extension == null || alltrue([for item in v.extension : (item.settings == null || (can(jsondecode(item.settings))))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.license_type == null || (contains(["None", "Windows_Client", "Windows_Server"], v.license_type))
      )
    ])
    error_message = "must be one of: None, Windows_Client, Windows_Server"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.source_image_reference == null || (length(v.source_image_reference.publisher) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.source_image_reference == null || (length(v.source_image_reference.offer) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.source_image_reference == null || (length(v.source_image_reference.sku) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.source_image_reference == null || (length(v.source_image_reference.version) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.zones == null || (alltrue([for x in v.zones : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.user_data_base64 == null || (can(base64decode(v.user_data_base64)))
      )
    ])
    error_message = "must be valid base64"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.priority_mix == null || (v.priority_mix.base_regular_count == null || (v.priority_mix.base_regular_count >= 0 && v.priority_mix.base_regular_count <= 1000))
      )
    ])
    error_message = "must be between 0 and 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        v.priority_mix == null || (v.priority_mix.regular_percentage_above_base == null || (v.priority_mix.regular_percentage_above_base >= 0 && v.priority_mix.regular_percentage_above_base <= 100))
      )
    ])
    error_message = "must be between 0 and 100"
  }
  # Note: 83 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

