# Global

variable "suffix" {
  description = "Optional suffix to identify and avoid duplication of unique resources"
  type        = string
  default     = ""
}

# GCP Integration specific

variable "enabled" {
  description = "Whether the GCP integration is enabled"
  type        = bool
  default     = true
}

variable "poll_rate" {
  description = "GCP poll rate in seconds (One of 60 or 300)"
  type        = number
  default     = 300
}

variable "host_or_usage_limits" {
  description = "Specify Usage-based limits for this integration"
  type        = map(number)
  default     = {}
}

variable "notifications_limits" {
  description = "Where to send notifications about this token's limits"
  type        = list(string)
  default     = null
}

variable "services" {
  description = "GCP service metrics to import. Empty list imports all services"
  type        = list(any)
  default     = []
}

variable "gcp_compute_metadata_whitelist" {
  description = "List of GCP compute metadata to whitelist for use with the SignalFx GCP integration"
  type        = list(string)
  default     = null
}

variable "gcp_project_id" {
  description = "GCP project id for use with the SignalFx GCP integration"
  type        = string
}

variable "gcp_service_account_id" {
  description = "GCP service account id for use with the SignalFx GCP integration"
  type        = string
  default     = ""
}
