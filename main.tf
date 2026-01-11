resource "azurerm_orchestrated_virtual_machine_scale_set" "orchestrated_virtual_machine_scale_sets" {
  for_each = var.orchestrated_virtual_machine_scale_sets

  location                      = each.value.location
  name                          = each.value.name
  platform_fault_domain_count   = each.value.platform_fault_domain_count
  resource_group_name           = each.value.resource_group_name
  user_data_base64              = each.value.user_data_base64
  upgrade_mode                  = each.value.upgrade_mode
  tags                          = each.value.tags
  source_image_id               = each.value.source_image_id
  sku_name                      = each.value.sku_name
  single_placement_group        = each.value.single_placement_group
  proximity_placement_group_id  = each.value.proximity_placement_group_id
  priority                      = each.value.priority
  max_bid_price                 = each.value.max_bid_price
  zone_balance                  = each.value.zone_balance
  license_type                  = each.value.license_type
  instances                     = each.value.instances
  extensions_time_budget        = each.value.extensions_time_budget
  extension_operations_enabled  = each.value.extension_operations_enabled
  eviction_policy               = each.value.eviction_policy
  encryption_at_host_enabled    = each.value.encryption_at_host_enabled
  capacity_reservation_group_id = each.value.capacity_reservation_group_id
  network_api_version           = each.value.network_api_version
  zones                         = each.value.zones

  dynamic "additional_capabilities" {
    for_each = each.value.additional_capabilities != null ? [each.value.additional_capabilities] : []
    content {
      ultra_ssd_enabled = additional_capabilities.value.ultra_ssd_enabled
    }
  }

  dynamic "automatic_instance_repair" {
    for_each = each.value.automatic_instance_repair != null ? [each.value.automatic_instance_repair] : []
    content {
      action       = automatic_instance_repair.value.action
      enabled      = automatic_instance_repair.value.enabled
      grace_period = automatic_instance_repair.value.grace_period
    }
  }

  dynamic "boot_diagnostics" {
    for_each = each.value.boot_diagnostics != null ? [each.value.boot_diagnostics] : []
    content {
      storage_account_uri = boot_diagnostics.value.storage_account_uri
    }
  }

  dynamic "data_disk" {
    for_each = each.value.data_disk != null ? [each.value.data_disk] : []
    content {
      caching                        = data_disk.value.caching
      create_option                  = data_disk.value.create_option
      disk_encryption_set_id         = data_disk.value.disk_encryption_set_id
      disk_size_gb                   = data_disk.value.disk_size_gb
      lun                            = data_disk.value.lun
      storage_account_type           = data_disk.value.storage_account_type
      ultra_ssd_disk_iops_read_write = data_disk.value.ultra_ssd_disk_iops_read_write
      ultra_ssd_disk_mbps_read_write = data_disk.value.ultra_ssd_disk_mbps_read_write
      write_accelerator_enabled      = data_disk.value.write_accelerator_enabled
    }
  }

  dynamic "extension" {
    for_each = each.value.extension != null ? [each.value.extension] : []
    content {
      auto_upgrade_minor_version_enabled        = extension.value.auto_upgrade_minor_version_enabled
      extensions_to_provision_after_vm_creation = extension.value.extensions_to_provision_after_vm_creation
      failure_suppression_enabled               = extension.value.failure_suppression_enabled
      force_extension_execution_on_change       = extension.value.force_extension_execution_on_change
      name                                      = extension.value.name
      protected_settings                        = extension.value.protected_settings
      dynamic "protected_settings_from_key_vault" {
        for_each = extension.value.protected_settings_from_key_vault != null ? [extension.value.protected_settings_from_key_vault] : []
        content {
          secret_url      = protected_settings_from_key_vault.value.secret_url
          source_vault_id = protected_settings_from_key_vault.value.source_vault_id
        }
      }
      publisher            = extension.value.publisher
      settings             = extension.value.settings
      type                 = extension.value.type
      type_handler_version = extension.value.type_handler_version
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "network_interface" {
    for_each = each.value.network_interface != null ? [each.value.network_interface] : []
    content {
      auxiliary_mode                = network_interface.value.auxiliary_mode
      auxiliary_sku                 = network_interface.value.auxiliary_sku
      dns_servers                   = network_interface.value.dns_servers
      enable_accelerated_networking = network_interface.value.enable_accelerated_networking
      enable_ip_forwarding          = network_interface.value.enable_ip_forwarding
      ip_configuration {
        application_gateway_backend_address_pool_ids = network_interface.value.ip_configuration.application_gateway_backend_address_pool_ids
        application_security_group_ids               = network_interface.value.ip_configuration.application_security_group_ids
        load_balancer_backend_address_pool_ids       = network_interface.value.ip_configuration.load_balancer_backend_address_pool_ids
        name                                         = network_interface.value.ip_configuration.name
        primary                                      = network_interface.value.ip_configuration.primary
        dynamic "public_ip_address" {
          for_each = network_interface.value.ip_configuration.public_ip_address != null ? [network_interface.value.ip_configuration.public_ip_address] : []
          content {
            domain_name_label       = public_ip_address.value.domain_name_label
            idle_timeout_in_minutes = public_ip_address.value.idle_timeout_in_minutes
            dynamic "ip_tag" {
              for_each = public_ip_address.value.ip_tag != null ? [public_ip_address.value.ip_tag] : []
              content {
                tag  = ip_tag.value.tag
                type = ip_tag.value.type
              }
            }
            name                = public_ip_address.value.name
            public_ip_prefix_id = public_ip_address.value.public_ip_prefix_id
            sku_name            = public_ip_address.value.sku_name
            version             = public_ip_address.value.version
          }
        }
        subnet_id = network_interface.value.ip_configuration.subnet_id
        version   = network_interface.value.ip_configuration.version
      }
      name                      = network_interface.value.name
      network_security_group_id = network_interface.value.network_security_group_id
      primary                   = network_interface.value.primary
    }
  }

  dynamic "os_disk" {
    for_each = each.value.os_disk != null ? [each.value.os_disk] : []
    content {
      caching = os_disk.value.caching
      dynamic "diff_disk_settings" {
        for_each = os_disk.value.diff_disk_settings != null ? [os_disk.value.diff_disk_settings] : []
        content {
          option    = diff_disk_settings.value.option
          placement = diff_disk_settings.value.placement
        }
      }
      disk_encryption_set_id    = os_disk.value.disk_encryption_set_id
      disk_size_gb              = os_disk.value.disk_size_gb
      storage_account_type      = os_disk.value.storage_account_type
      write_accelerator_enabled = os_disk.value.write_accelerator_enabled
    }
  }

  dynamic "os_profile" {
    for_each = each.value.os_profile != null ? [each.value.os_profile] : []
    content {
      custom_data = os_profile.value.custom_data
      dynamic "linux_configuration" {
        for_each = os_profile.value.linux_configuration != null ? [os_profile.value.linux_configuration] : []
        content {
          admin_password = linux_configuration.value.admin_password
          dynamic "admin_ssh_key" {
            for_each = linux_configuration.value.admin_ssh_key != null ? [linux_configuration.value.admin_ssh_key] : []
            content {
              public_key = admin_ssh_key.value.public_key
              username   = admin_ssh_key.value.username
            }
          }
          admin_username                  = linux_configuration.value.admin_username
          computer_name_prefix            = linux_configuration.value.computer_name_prefix
          disable_password_authentication = linux_configuration.value.disable_password_authentication
          patch_assessment_mode           = linux_configuration.value.patch_assessment_mode
          patch_mode                      = linux_configuration.value.patch_mode
          provision_vm_agent              = linux_configuration.value.provision_vm_agent
          dynamic "secret" {
            for_each = linux_configuration.value.secret != null ? [linux_configuration.value.secret] : []
            content {
              certificate {
                url = secret.value.certificate.url
              }
              key_vault_id = secret.value.key_vault_id
            }
          }
        }
      }
      dynamic "windows_configuration" {
        for_each = os_profile.value.windows_configuration != null ? [os_profile.value.windows_configuration] : []
        content {
          dynamic "additional_unattend_content" {
            for_each = windows_configuration.value.additional_unattend_content != null ? [windows_configuration.value.additional_unattend_content] : []
            content {
              content = additional_unattend_content.value.content
              setting = additional_unattend_content.value.setting
            }
          }
          admin_password           = windows_configuration.value.admin_password
          admin_username           = windows_configuration.value.admin_username
          computer_name_prefix     = windows_configuration.value.computer_name_prefix
          enable_automatic_updates = windows_configuration.value.enable_automatic_updates
          hotpatching_enabled      = windows_configuration.value.hotpatching_enabled
          patch_assessment_mode    = windows_configuration.value.patch_assessment_mode
          patch_mode               = windows_configuration.value.patch_mode
          provision_vm_agent       = windows_configuration.value.provision_vm_agent
          dynamic "secret" {
            for_each = windows_configuration.value.secret != null ? [windows_configuration.value.secret] : []
            content {
              certificate {
                store = secret.value.certificate.store
                url   = secret.value.certificate.url
              }
              key_vault_id = secret.value.key_vault_id
            }
          }
          timezone = windows_configuration.value.timezone
          dynamic "winrm_listener" {
            for_each = windows_configuration.value.winrm_listener != null ? [windows_configuration.value.winrm_listener] : []
            content {
              certificate_url = winrm_listener.value.certificate_url
              protocol        = winrm_listener.value.protocol
            }
          }
        }
      }
    }
  }

  dynamic "plan" {
    for_each = each.value.plan != null ? [each.value.plan] : []
    content {
      name      = plan.value.name
      product   = plan.value.product
      publisher = plan.value.publisher
    }
  }

  dynamic "priority_mix" {
    for_each = each.value.priority_mix != null ? [each.value.priority_mix] : []
    content {
      base_regular_count            = priority_mix.value.base_regular_count
      regular_percentage_above_base = priority_mix.value.regular_percentage_above_base
    }
  }

  dynamic "rolling_upgrade_policy" {
    for_each = each.value.rolling_upgrade_policy != null ? [each.value.rolling_upgrade_policy] : []
    content {
      cross_zone_upgrades_enabled             = rolling_upgrade_policy.value.cross_zone_upgrades_enabled
      max_batch_instance_percent              = rolling_upgrade_policy.value.max_batch_instance_percent
      max_unhealthy_instance_percent          = rolling_upgrade_policy.value.max_unhealthy_instance_percent
      max_unhealthy_upgraded_instance_percent = rolling_upgrade_policy.value.max_unhealthy_upgraded_instance_percent
      maximum_surge_instances_enabled         = rolling_upgrade_policy.value.maximum_surge_instances_enabled
      pause_time_between_batches              = rolling_upgrade_policy.value.pause_time_between_batches
      prioritize_unhealthy_instances_enabled  = rolling_upgrade_policy.value.prioritize_unhealthy_instances_enabled
    }
  }

  dynamic "sku_profile" {
    for_each = each.value.sku_profile != null ? [each.value.sku_profile] : []
    content {
      allocation_strategy = sku_profile.value.allocation_strategy
      vm_sizes            = sku_profile.value.vm_sizes
    }
  }

  dynamic "source_image_reference" {
    for_each = each.value.source_image_reference != null ? [each.value.source_image_reference] : []
    content {
      offer     = source_image_reference.value.offer
      publisher = source_image_reference.value.publisher
      sku       = source_image_reference.value.sku
      version   = source_image_reference.value.version
    }
  }

  dynamic "termination_notification" {
    for_each = each.value.termination_notification != null ? [each.value.termination_notification] : []
    content {
      enabled = termination_notification.value.enabled
      timeout = termination_notification.value.timeout
    }
  }
}

