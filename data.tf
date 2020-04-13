## vSphere Data Collection
data "vsphere_datacenter" "dc" {
  name = var.datacenter
}

# data "vsphere_datastore" "library_datastore" {
#   name          = var.content_library_ds
#   datacenter_id = data.vsphere_datacenter.dc.id
# }

## NSX Data Collection
data "nsxt_policy_edge_cluster" "edge_cluster_01" {
  display_name        = var.edge_cluster
}

data "nsxt_policy_edge_node" "edge_node_1" {
  edge_cluster_path = data.nsxt_policy_edge_cluster.edge_cluster_01.path
  member_index = 0
}

data "nsxt_policy_edge_node" "edge_node_2" {
  edge_cluster_path = data.nsxt_policy_edge_cluster.edge_cluster_01.path
  member_index = 1
}
data "nsxt_policy_transport_zone" "vlan_transport_zone" {
  display_name   = var.vlan_tz
  transport_type = "VLAN_BACKED"
  is_default     = false
}

data "nsxt_policy_transport_zone" "overlay_transport_zone" {
  display_name   = var.overlay_tz
  transport_type = "OVERLAY_STANDARD"
  is_default     = false
}
