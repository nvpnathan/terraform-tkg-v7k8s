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
datacenter      = "pl-dc"
vds             = "pl-tkg"

## vSphere Resources
content_library_ds = "nfs-01"


## NSX Data Collection
edge_cluster    = "edge-cluster-1"
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
t0_ha_vip           = "192.168.71.10/24"
default_route_ip    = "192.168.71.1"
uplink_segment      = "192.168.71.1/24"
