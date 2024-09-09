resource "azurerm_cost_anomaly_alert" "Azure_Cost_Anomaly_Alert" {
  # the name has to be unique within your subscription
  name            = var.cost_anomaly_alert_name
  display_name    = "My Cost Anomaly Alert"
  # as Cost Anomaly Alerts have the scope Subscription add your subscription ID
  subscription_id = "/subscriptions/${var.subscription_id}"
  email_subject   = "My Test Anomaly Alert"
  email_addresses = var.email_addresses
}
