
variable "project_id" {
    type        = string
    description = "gcp project id"
}

variable "region" {
    type        = string
    default     = "asia-southeast1"
    description = "gcp region"
}

variable "network_name" {
  description = "Name of the network this set of firewall rules applies to."
  type        = string
}


variable "rules" {
  description = "List of custom rule definitions (refer to variables file for syntax)."
  default     = []
  type = list(object({
    name                    = string
    description             = string
    direction               = string
    priority                = number
    ranges                  = list(string)
    source_tags             = list(string)
    source_service_accounts = list(string)
    target_tags             = list(string)
    target_service_accounts = list(string)
    allow = list(object({
      protocol = string
      ports    = list(string)
    }))
    deny = list(object({
      protocol = string
      ports    = list(string)
    }))
    log_config = object({
      metadata = string
    })
  }))
}
