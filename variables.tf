variable "nsx_user" {}
variable "nsx_password" {}
variable "nsx_server" {}



variable "network" {
  type = map
  default = {
    name     = "myTfSegment"
    cidr = "10.7.99.0/24"
    transportZone = "N1_TZ_nested_nsx-overlay"
    tier1 = "N1-T1_AVI-VIP-A"
    networkRangeBegin = "11" # for NSX-T segment if DHCP enabled
    networkRangeEnd = "50" # for NSX-T segment if DHCP enabled
    type = "V4" # for Avi
    dhcp_enabled = "false" # for Avi
    exclude_discovered_subnets = "true" # for Avi
    vcenter_dvs = "true" # for Avi
  }
}

