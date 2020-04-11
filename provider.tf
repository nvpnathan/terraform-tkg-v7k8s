# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = var.vsphere_provider_params["vsphere_usr"]
  password       = var.vsphere_provider_params["vsphere_pwd"]
  vsphere_server = var.vsphere_provider_params["vsphere_server"]
  version        = "1.17.1"
  # if you have a self-signed cert
  allow_unverified_ssl = true
}

provider "nsxt" {
  host                 = var.nsx_provider_params["nsx_host"]
  username             = var.nsx_provider_params["nsx_usr"]
  password             = var.nsx_provider_params["nsx_pwd"]
  allow_unverified_ssl = true
  version              = "2.0"
}