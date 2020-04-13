## NSX Resources
resource "nsxt_policy_tier0_gateway" "tier0_gw" {
  description               = "Tier-0 provisioned by Terraform"
  display_name              = var.t0_rtr_01
  failover_mode             = "PREEMPTIVE"
  default_rule_logging      = false
  enable_firewall           = false
  ha_mode                   = "ACTIVE_STANDBY"
  edge_cluster_path         = data.nsxt_policy_edge_cluster.edge_cluster_01.path

  tag {
    scope = "tkg"
    tag   = "tanzu"
  }
}

resource "nsxt_policy_static_route" "default-route" {
  display_name = "default-route"
  gateway_path = nsxt_policy_tier0_gateway.tier0_gw.path
  network      = "0.0.0.0/0"

  next_hop {
    admin_distance = "1"
    ip_address     = var.default_route_ip
  }
}

# Create Tier-0 Gateway Uplink Interfaces
resource "nsxt_policy_tier0_gateway_interface" "uplink1" {
    display_name        = var.t0_uplink_01
    description         = "Terraform provisioned Segment"
    type                = "EXTERNAL"
    edge_node_path      = data.nsxt_policy_edge_node.edge_node_1.path
    gateway_path        = nsxt_policy_tier0_gateway.tier0_gw.path
    segment_path        = nsxt_policy_vlan_segment.t0_uplink.path
    subnets             = [var.t0_uplink_ip_01]
    mtu                 = 1500
}
 
resource "nsxt_policy_tier0_gateway_interface" "uplink2" {
    display_name        = var.t0_uplink_02
    description         = "Terraform provisioned Segment"
    type                = "EXTERNAL"
    edge_node_path      = data.nsxt_policy_edge_node.edge_node_2.path
    gateway_path        = nsxt_policy_tier0_gateway.tier0_gw.path
    segment_path        = nsxt_policy_vlan_segment.t0_uplink.path
    subnets             = [var.t0_uplink_ip_02]
    mtu                 = 1500
}

resource "nsxt_policy_vlan_segment" "t0_uplink" {
    display_name        = var.t0_uplink
    description         = "Terraform provisioned Segment"
    transport_zone_path = data.nsxt_policy_transport_zone.vlan_transport_zone.path
    vlan_ids            = [var.t0_uplink_vlan]
    subnet {
      cidr  = var.uplink_segment
    }
}