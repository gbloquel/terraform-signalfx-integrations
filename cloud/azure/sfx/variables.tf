# Global

variable "suffix" {
  description = "Optional suffix to identify and avoid duplication of unique resources"
  type        = string
  default     = ""
}

# Azure Integration specific

variable "enabled" {
  description = "Whether the Azure integration is enabled"
  type        = bool
  default     = true
}

variable "poll_rate" {
  description = "Azure poll rate in seconds (One of 60 or 300)"
  type        = number
  default     = 300
}

variable "services" {
  description = "Azure service metrics to import. Empty list imports all services"
  type        = list(any)
  default     = []
}

variable "azure_tenant_id" {
  description = "Azure Tenant ID/Directory ID"
  type        = string
}

variable "azure_subscription_ids" {
  description = "List of Azure Subscription IDs to monitor"
  type        = list(string)
}

variable "azure_sp_application_id" {
  description = "Azure Service Principal application ID"
  type        = string
}

variable "azure_sp_application_token" {
  description = "Azure Service Principal application token (or password)"
  type        = string
}
