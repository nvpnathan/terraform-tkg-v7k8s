# provider variables
variable "vsphere_provider_params" {
  default = {
    vsphere_usr        = "administrator@vsphere.local"
    vsphere_pwd        = "VMware1!"
    vsphere_server     = "vlab-vcsa.vballin.com"
  }
}

variable "nsx_provider_params" {
  default = {
    nsx_usr       = "admin"
    nsx_pwd       = "VMware1!VMware1!"
    nsx_host      = "vlab-nsx.vballin.com"
  }
}

variable "datacenter" {
  type        = string
  description = "datacenter object in vcenter"
}

variable "content_library_ds" {
  type        = string
  description = "content library datastore"
}

variable "vds" {
  type        = string
  description = "vsphere distributed switch"
}

variable "edge_cluster" {
  type        = string
  description = "nsx edge cluster"
}

variable "vlan_tz" {
  type        = string
  description = "nsx vlan transport zone"
}

variable "overlay_tz" {
  type        = string
  description = "nsx overlay transport zone"
}

variable "t0_rtr_01" {
  type        = string
  description = "t0 router uplink 01 name"
}

variable "t0_uplink" {
  type        = string
  description = "t0 router uplink segment name"
}

variable "t0_uplink_01" {
  type        = string
  description = "t0 router uplink 01 name"
}

variable "t0_uplink_ip_01" {
  type        = string
  description = "t0 uplink 01 ip"
}

variable "t0_uplink_02" {
  type        = string
  description = "t0 router uplink 02 name"
}

variable "t0_uplink_ip_02" {
  type        = string
  description = "t0 uplink 02 ip"
}

variable "t0_uplink_vlan" {
  type        = string
  description = "t0 uplink vlan id"
}

variable "t0_ha_vip" {
  type        = string
  description = "t0 ha vip iip address"
}

variable "default_route_ip" {
  type        = string
  description = "t0 default route"
}

variable "uplink_segment" {
  type        = string
  description = "uplink segment cidr"
}