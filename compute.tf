## Subscribed libary's are not supported
## https://github.com/terraform-providers/terraform-provider-vsphere/issues/1035

# resource "vsphere_content_library" "library" {
#   name            = "VMware TKG"
#   storage_backing = flatten([data.vsphere_datastore.library_datastore.id])
#   description     = "TKG Guest Images"
#   subscribe_url   = "https://wp-content.vmware.com/v2/latest.lib.json" 
# }