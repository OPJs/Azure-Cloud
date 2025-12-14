# monitoring.tf

#################################
# Action Group (email alerts)
#################################

resource "azurerm_monitor_action_group" "main" {
  name                = "ag-${var.resource_group_name}-alerts"
  resource_group_name = azurerm_resource_group.main.name
  short_name          = "vm-alerts"

  email_receiver {
    name          = "admin"
    email_address = var.alert_email_address
  }
}

#################################
# CPU Metric Alert (Platform Metrics)
#################################

resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = "cpu-alert-${azurerm_linux_virtual_machine.main.name}"
  resource_group_name = azurerm_resource_group.main.name
  scopes              = [azurerm_linux_virtual_machine.main.id]
  description         = "Alert when CPU usage exceeds 70%"
  severity            = 2

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 70
  }

  window_size   = "PT5M"
  frequency     = "PT1M"
  auto_mitigate = true

  action {
    action_group_id = azurerm_monitor_action_group.main.id
  }
}

#################################
# Log Analytics Workspace (RAM)
#################################

resource "azurerm_log_analytics_workspace" "main" {
  name                = "law-${var.resource_group_name}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

#################################
# Data Collection Rule (RAM metrics)
#################################

resource "azurerm_monitor_data_collection_rule" "vm_memory" {
  name                = "dcr-vm-memory"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  destinations {
    log_analytics {
      workspace_resource_id = azurerm_log_analytics_workspace.main.id
      name                  = "law-destination"
    }
  }

  data_flow {
    streams      = ["Microsoft-InsightsMetrics"]
    destinations = ["law-destination"]
  }

  data_sources {
    performance_counter {
      name                          = "memory"
      streams                       = ["Microsoft-InsightsMetrics"]
      sampling_frequency_in_seconds = 60
      counter_specifiers            = ["\\Memory\\Available MBytes"]
    }
  }
}

#################################
# Associate DCR to the VM
#################################

resource "azurerm_monitor_data_collection_rule_association" "vm" {
  name                    = "dcr-association"
  target_resource_id      = azurerm_linux_virtual_machine.main.id
  data_collection_rule_id = azurerm_monitor_data_collection_rule.vm_memory.id
}

#################################
# RAM Alert (< 512 MB available)
#################################

resource "azurerm_monitor_scheduled_query_rules_alert" "memory_alert" {
  name                = "memory-alert-${azurerm_linux_virtual_machine.main.name}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  action {
    action_group = [azurerm_monitor_action_group.main.id]
  }

  data_source_id = azurerm_log_analytics_workspace.main.id
  description    = "Alert when available RAM is below 512MB"
  enabled        = true
  severity       = 2

  query = <<-QUERY
InsightsMetrics
| where Name == "AvailableMB"
| summarize avg(Val) by bin(TimeGenerated, 5m)
| where avg_Val < 512
QUERY

  frequency   = 5
  time_window = 5

  trigger {
    operator  = "GreaterThan"
    threshold = 0
  }
}