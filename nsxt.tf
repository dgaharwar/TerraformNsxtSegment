data "nsxt_policy_transport_zone" "tz" {
  display_name = var.network.transportZone
}

data "nsxt_policy_tier1_gateway" "tier1_router" {
  display_name = var.network.tier1
}


//resource "nsxt_policy_segment" "networkMgmt" {
//  display_name        = var.networkMgmt["name"]
//  connectivity_path   = "/infra/tier-1s/cgw"
//  transport_zone_path = data.nsxt_policy_transport_zone.tz.path
//  #domain_name         = "runvmc.local"
//  description         = "Network Segment built by Terraform for Avi"
//  subnet {
//    cidr        = "${cidrhost(var.networkMgmt["cidr"], 1)}/${split("/", var.networkMgmt["cidr"])[1]}"
//    dhcp_ranges = ["${cidrhost(var.networkMgmt["cidr"], var.networkMgmt["networkRangeBegin"])}-${cidrhost(var.networkMgmt["cidr"], var.networkMgmt["networkRangeEnd"])}"]
//  }
//}

resource "nsxt_policy_segment" "networkBackend" {
  display_name        = var.network["name"]
  connectivity_path   = data.nsxt_policy_tier1_gateway.tier1_router.path
  transport_zone_path = data.nsxt_policy_transport_zone.tz.path
  #domain_name         = "runvmc.local"
  description         = "Network Segment built by Terraform"
  subnet {
    cidr        = "${cidrhost(var.network["cidr"], 1)}/${split("/", var.network["cidr"])[1]}"
//    dhcp_ranges = ["${cidrhost(var.networkBackend["cidr"], var.networkBackend["networkRangeBegin"])}-${cidrhost(var.networkBackend["cidr"], var.networkBackend["networkRangeEnd"])}"]

  }
}


