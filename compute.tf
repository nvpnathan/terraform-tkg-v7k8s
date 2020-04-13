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


## Subscribed libary's are not supported
## https://github.com/terraform-providers/terraform-provider-vsphere/issues/1035

# resource "vsphere_content_library" "library" {
#   name            = "VMware TKG"
#   storage_backing = flatten([data.vsphere_datastore.library_datastore.id])
#   description     = "TKG Guest Images"
#   subscribe_url   = "https://wp-content.vmware.com/v2/latest.lib.json" 
# }