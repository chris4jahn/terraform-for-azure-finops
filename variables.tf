variable "cost_anomaly_alert_name" {
  type = string
  default = "myCostAnomalyAlert"
}

variable "subscription_id" {
  type = string
  default = "00000000-0000-0000-0000-00000000"
}

variable "email_addresses" {
  type    = list(string)
  default = ["my-mail@domain.com"]
}
