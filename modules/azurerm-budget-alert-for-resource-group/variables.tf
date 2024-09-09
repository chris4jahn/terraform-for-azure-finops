variable "azure_monitor_action_group_rg" {
  default = "AzMonAG-RG"
}

variable "location" {
 default =  "westeurope"
}

variable "azure_monitor_action_group_name" {
  default = "AG-Budget-for-RG"
}

variable "azure_monitor_action_group_short_name" {
  default = "AGBudgetRG"
}

variable "azure_consumption_budget_resource_group_name" {
  default = "ACB-RG"
}

variable "azure_budget_alert_start_date" {
    default =   "2022-06-01T00:00:00Z"
}

variable "azure_budget_alert_end_date" {
    default = "2023-05-31T00:00:00Z"
}

variable "azure_budget_alert_contact_emails" {
    type = list(string)
    default = [
      "foo@example.com",
      "bar@example.com",
    ]
  
}