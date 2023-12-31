variable "hosting_zone_domain_name" {
  type        = string
  description = "Domain for fetching Hosting Zone ID form Route53. Required for DNS validation. If not passed, FQDN will be used to get Hosting Zone"
  default     = ""
}

variable "hosting_zone_public" {
  type        = bool
  description = "Default true. Set false if hosted zone is private"
  default     = true
}

variable "fqdn" {
  type        = string
  description = "Primary domain for certificate"
}

variable "additional_domains" {
  type        = list(string)
  description = "Additional domains/sub-domains to be added to this certificate"
  default     = []

}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the ACM certificate"
}