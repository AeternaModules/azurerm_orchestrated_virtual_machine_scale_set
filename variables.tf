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
        - vm_sizes (required)
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
    location                      = string
    name                          = string
    platform_fault_domain_count   = number
    resource_group_name           = string
    user_data_base64              = optional(string)
    upgrade_mode                  = optional(string) # Default: "Manual"
    tags                          = optional(map(string))
    source_image_id               = optional(string)
    sku_name                      = optional(string)
    single_placement_group        = optional(bool)
    proximity_placement_group_id  = optional(string)
    priority                      = optional(string) # Default: "Regular"
    max_bid_price                 = optional(number) # Default: -1
    zone_balance                  = optional(bool)   # Default: false
    license_type                  = optional(string)
    instances                     = optional(number)
    extensions_time_budget        = optional(string) # Default: "PT1H30M"
    extension_operations_enabled  = optional(bool)   # Default: true
    eviction_policy               = optional(string)
    encryption_at_host_enabled    = optional(bool)
    capacity_reservation_group_id = optional(string)
    network_api_version           = optional(string) # Default: "2020-11-01"
    zones                         = optional(set(string))
    additional_capabilities = optional(object({
      ultra_ssd_enabled = optional(bool) # Default: false
    }))
    automatic_instance_repair = optional(object({
      action       = optional(string)
      enabled      = bool
      grace_period = optional(string)
    }))
    boot_diagnostics = optional(object({
      storage_account_uri = optional(string)
    }))
    data_disk = optional(object({
      caching                        = string
      create_option                  = optional(string) # Default: "Empty"
      disk_encryption_set_id         = optional(string)
      disk_size_gb                   = optional(number)
      lun                            = optional(number)
      storage_account_type           = string
      ultra_ssd_disk_iops_read_write = optional(number)
      ultra_ssd_disk_mbps_read_write = optional(number)
      write_accelerator_enabled      = optional(bool) # Default: false
    }))
    extension = optional(object({
      auto_upgrade_minor_version_enabled        = optional(bool) # Default: true
      extensions_to_provision_after_vm_creation = optional(list(string))
      failure_suppression_enabled               = optional(bool) # Default: false
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
    }))
    identity = optional(object({
      identity_ids = set(string)
      type         = string
    }))
    network_interface = optional(object({
      auxiliary_mode                = optional(string)
      auxiliary_sku                 = optional(string)
      dns_servers                   = optional(list(string))
      enable_accelerated_networking = optional(bool) # Default: false
      enable_ip_forwarding          = optional(bool) # Default: false
      ip_configuration = object({
        application_gateway_backend_address_pool_ids = optional(set(string))
        application_security_group_ids               = optional(set(string))
        load_balancer_backend_address_pool_ids       = optional(set(string))
        name                                         = string
        primary                                      = optional(bool) # Default: false
        public_ip_address = optional(object({
          domain_name_label       = optional(string)
          idle_timeout_in_minutes = optional(number)
          ip_tag = optional(object({
            tag  = string
            type = string
          }))
          name                = string
          public_ip_prefix_id = optional(string)
          sku_name            = optional(string)
          version             = optional(string) # Default: "IPv4"
        }))
        subnet_id = optional(string)
        version   = optional(string) # Default: "IPv4"
      })
      name                      = string
      network_security_group_id = optional(string)
      primary                   = optional(bool) # Default: false
    }))
    os_disk = optional(object({
      caching = string
      diff_disk_settings = optional(object({
        option    = string
        placement = optional(string) # Default: "CacheDisk"
      }))
      disk_encryption_set_id    = optional(string)
      disk_size_gb              = optional(number)
      storage_account_type      = string
      write_accelerator_enabled = optional(bool) # Default: false
    }))
    os_profile = optional(object({
      custom_data = optional(string)
      linux_configuration = optional(object({
        admin_password = optional(string)
        admin_ssh_key = optional(object({
          public_key = string
          username   = string
        }))
        admin_username                  = string
        computer_name_prefix            = optional(string)
        disable_password_authentication = optional(bool)   # Default: true
        patch_assessment_mode           = optional(string) # Default: "ImageDefault"
        patch_mode                      = optional(string) # Default: "ImageDefault"
        provision_vm_agent              = optional(bool)   # Default: true
        secret = optional(object({
          certificate = list(object({
            url = string
          }))
          key_vault_id = string
        }))
      }))
      windows_configuration = optional(object({
        additional_unattend_content = optional(object({
          content = string
          setting = string
        }))
        admin_password           = string
        admin_username           = string
        computer_name_prefix     = optional(string)
        enable_automatic_updates = optional(bool)   # Default: true
        hotpatching_enabled      = optional(bool)   # Default: false
        patch_assessment_mode    = optional(string) # Default: "ImageDefault"
        patch_mode               = optional(string) # Default: "AutomaticByOS"
        provision_vm_agent       = optional(bool)   # Default: true
        secret = optional(object({
          certificate = list(object({
            store = string
            url   = string
          }))
          key_vault_id = string
        }))
        timezone = optional(string)
        winrm_listener = optional(object({
          certificate_url = optional(string)
          protocol        = string
        }))
      }))
    }))
    plan = optional(object({
      name      = string
      product   = string
      publisher = string
    }))
    priority_mix = optional(object({
      base_regular_count            = optional(number) # Default: 0
      regular_percentage_above_base = optional(number) # Default: 0
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
      vm_sizes            = set(string)
    }))
    source_image_reference = optional(object({
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }))
    termination_notification = optional(object({
      enabled = bool
      timeout = optional(string) # Default: "PT5M"
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        length(v.os_profile.linux_configuration.secret.certificate) >= 1
      )
    ])
    error_message = "Each certificate list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.orchestrated_virtual_machine_scale_sets : (
        length(v.os_profile.windows_configuration.secret.certificate) >= 1
      )
    ])
    error_message = "Each certificate list must contain at least 1 items"
  }
}

