## vSphere Information
vsphere_provider_params = {
    vsphere_usr        = "administrator@vsphere.local"
    vsphere_pwd        = "VMware1!"
    vsphere_server     = "vlab-vcsa.vballin.com"
}

nsx_provider_params = {
    nsx_usr       = "admin"
    nsx_pwd       = "VMware1!VMware1!"
    nsx_host      = "vlab-nsx.vballin.com"
}

## vSphere Data Collection
datacenter      = "vlab-dc"
mgmt_cluster    = "tf-vlab-mgmt"
comp_cluster    = "tf-vlab-tkg"
vds             = "tf-mgmt"


## vSphere Resources
vm_folder       = "tf-tkg-vms"
mgmt_rp         = "tf-tkg-mgmt"
comp_rp         = "tf-tkg-workload"
mgmt_net        = "tf-tkg-k8s-mgmt"
mgmt_net_vlan   = "72"

## NSX Data Collection
edge_cluster    = "tkg-edge-cluster-01"
vlan_tz         = "vlan-tz"
overlay_tz      = "overlay-tz"

## NSX Resources
t0_rtr_01           = "tf-t0-tkg"
t0_uplink           = "tf-t0_uplink"
t0_uplink_01        = "tf-t0-uplink-01"
t0_uplink_ip_01     = "192.168.71.8/24"
t0_uplink_02        = "tf-t0-uplink-02"
t0_uplink_ip_02     = "192.168.71.9/24"
t0_uplink_vlan      = "71"
default_route_ip    = "192.168.71.1"
uplink_segment      = "192.168.71.1/24"
