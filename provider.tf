terraform {
  required_providers {
    # Provider source is used for Terraform discovery and installation of
    # providers. Declare source for all providers required by the module.
    nsxt = {
      source  = "vmware/nsxt"
    }
  }
}

provider "nsxt" {
  host                     = var.nsxt_host
  username                 = var.nsxt_username
  password                 = var.nsxt_password
  allow_unverified_ssl     = true
  max_retries              = 10
  retry_min_delay          = 500
  retry_max_delay          = 5000
  retry_on_status_codes    = [429]
}
