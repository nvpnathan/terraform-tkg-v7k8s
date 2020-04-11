resource "vsphere_resource_pool" "resource_pool-1" {
  name                    = var.mgmt_rp
  parent_resource_pool_id = data.vsphere_compute_cluster.compute_cluster-1.resource_pool_id
}

resource "vsphere_resource_pool" "resource_pool-2" {
  name                    = var.comp_rp
  parent_resource_pool_id = data.vsphere_compute_cluster.compute_cluster-2.resource_pool_id
}

resource "vsphere_folder" "folder" {
  path          = var.vm_folder
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}
