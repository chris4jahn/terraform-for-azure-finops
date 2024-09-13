resource "azurerm_resource_group" "Azure_Monitor_Action_Group_RG" {
  name     = var.azure_monitor_action_group_rg
  location = var.location
}

resource "azurerm_monitor_action_group" "Azure_Monitor_Action_Group" {
  name                = var.azure_monitor_action_group_name
  resource_group_name = azurerm_resource_group.Azure_Monitor_Action_Group_RG.name
  short_name          = var.azure_monitor_action_group_short_name
}

resource "azurerm_consumption_budget_resource_group" "Azure_Consumption_Budget_RG" {
  name              = var.azure_consumption_budget_resource_group_name
  resource_group_id = azurerm_resource_group.Azure_Monitor_Action_Group_RG.id

  amount     = 1000
  time_grain = "Monthly"

  time_period {
    start_date = var.azure_budget_alert_start_date
    end_date   = var.azure_budget_alert_end_date
  }

  filter {
    dimension {
      name = "ResourceId"
      values = [
        azurerm_monitor_action_group.Azure_Monitor_Action_Group.id,
      ]
    }

    tag {
      name = "Costcenter"
      values = [
        "01",
        "02",
      ]
    }
  }

  notification {
    enabled        = true
    threshold      = 90.0
    operator       = "EqualTo"
    threshold_type = "Forecasted"

    contact_emails = var.azure_budget_alert_contact_emails

    contact_groups = [
      azurerm_monitor_action_group.Azure_Monitor_Action_Group.id,
    ]

    contact_roles = [
      "Owner",
    ]
  }

  notification {
    enabled   = false
    threshold = 100.0
    operator  = "GreaterThan"

    contact_emails = var.azure_budget_alert_contact_emails
  }
}
