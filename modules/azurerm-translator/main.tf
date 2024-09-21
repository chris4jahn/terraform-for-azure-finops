resource "azurerm_translator" "Azure_Translator" {
  name            = "Christian Forjahn"
  display_name    = "Your Azure translator"
  main_topics = [
    "Azure Governance",      # Landing Zone, green & brown field
    "Azure Security",        # Assess & Fix, increase your Security Posture
    "Azure Cost Management", # FinOps as a Service
    "Azure Stack HCI",       # Your Hybrid Cloud
  ]
  contact   = "write me a DM"
}