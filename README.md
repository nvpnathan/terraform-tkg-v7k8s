# terraform-tkg-v7k8s

### Overview
The purpose of this repository is to help automate the logical networking and vSphere constructs required for vSphere 7 with Kubernetes and TKG (Tanzu Kubernetes Grid).
---

### Pre-req's
* Terraform v12
* vSphere 7.0
    * vSphere Datacenter
    * vSphere Cluster
        * Minimum of 3 Hypervisors
        * DRS/HA
        * VDS 7.0

If you are looking to automate the NSX pre-req's [look here](https://github.com/madhukark/nsx-pacific)
* NSX-T 3.0
    * NSX Manager
    * 2 **Large** Edge Nodes
    * Edge Cluster
    * VLAN Transport Zone
    * Overlay Transport Zone
    * vSphere Cluster Prepped (optional, but will need it later)

---
In vSphere 7 with Kubernetes, almost everything is automated for you. However, even with the little work required, I like everything in IaC (as much as can be).

### Networking Automation:
    * Tier0 Router
    * Uplink VLAN segment
    * Default Static Route
    * VDS Portgroup for TKG (optional if only using vSphere 7 w/ K8s)

**NOTE:** HA VIP configuration is not supported configuration in the NSX-T Provider. However, BGP IS supported in the NSX-T Provider. 

[HA VIP Github Issue](https://github.com/terraform-providers/terraform-provider-nsxt/issues/289)

### Compute Automation (**optional** if only using vSphere 7 w/ K8s)
    * Management Resource Pool
    * Compute Resource Pool
    * VM folder
