variable "name" {
  type        = list(string)
  default     = [""]
  description = "Name of the resource. Provided by the client when the resource is created. "
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(string)
  default     = ["name", "environment"]
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "extra_tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the resource."
}

variable "managedby" {
  type        = string
  default     = "info@cypik.com"
  description = "ManagedBy, eg 'info@cypik.com'"
}

variable "repository" {
  type        = string
  default     = "https://github.com/cypik/terraform-google-vpc-peering"
  description = "Terraform current module repo"
}

variable "local_network" {
  type        = string
  description = "Resource link of the network to add a peering to."
}

variable "peer_network" {
  type        = string
  description = "Resource link of the peer network."
}

variable "export_peer_custom_routes" {
  type        = bool
  default     = false
  description = "Export custom routes to local network from peer network."
}

variable "export_local_custom_routes" {
  type        = bool
  default     = false
  description = "Export custom routes to peer network from local network."
}

variable "export_peer_subnet_routes_with_public_ip" {
  type        = bool
  default     = false
  description = "Export custom routes to local network from peer network (defaults to false; causes the Local Peering Connection to align with the [provider default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network_peering#import_subnet_routes_with_public_ip), and the Remote Peering Connection to be opposite the provider default)."
}

variable "export_local_subnet_routes_with_public_ip" {
  type        = bool
  default     = true
  description = "Export custom routes to peer network from local network (defaults to true; causes the Local Peering Connection to align with the [provider default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network_peering#export_subnet_routes_with_public_ip), and the Remote Peering Connection to be opposite the provider default)."
}

variable "module_depends_on" {
  type        = list(any)
  default     = []
  description = "List of modules or resources this module depends on."
}

variable "stack_type" {
  type        = string
  default     = "IPV4_ONLY"
  description = "Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. Possible values: [\"IPV4_ONLY\", \"IPV4_IPV6\"]."
}

variable "vpc_1_name" {
  type        = string
  default     = ""
  description = "The name of the virtual network. Changing this forces a new resource to be created."
}

variable "vpc_2_name" {
  type        = string
  default     = ""
  description = "The name of the virtual network. Changing this forces a new resource to be created."
}

variable "peering_enabled" {
  type        = bool
  default     = true
  description = "peering_enabled in true  for  resource to be created."
}