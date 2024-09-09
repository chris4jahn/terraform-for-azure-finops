module "azurerm_cost_anomaly_alert" {
  source                       = "./modules/azure-cost-anomaly-alert"
  cost_anomaly_alert_name      = var.cost_anomaly_alert_name
  subscription_id              = var.subscription_id
  email_addresses              = var.email_addresses

}