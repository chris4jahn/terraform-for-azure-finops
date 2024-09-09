module "azurerm_cost_anomaly_alert" {
  source                       = "./modules/azure-cost-anomaly-alert"
  cost_anomaly_alert_name      = var.cost_anomaly_alert_name
  subscription_id              = var.subscription_id
  email_addresses              = var.email_addresses

}

module "azurerm_budget_alert_for_resource_group" {
  source = "./modules/azure-budget-alert-for-resource-group"
  
}