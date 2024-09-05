# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_cost_anomaly_alert" "example" {
  name            = "myalertname"
  display_name    = "My Cost Anomaly Alert"
  # as Cost Anomaly Alerts have the scope Subscription add your subscription ID
  subscription_id = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx"
  email_subject   = "My Test Anomaly Alert"
  email_addresses = ["me@mymaildomain.net"]
}
