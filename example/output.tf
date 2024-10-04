output "local_network_peering" {
  value       = module.peering.local_network_peering
  description = "Network peering resource."
}

output "peer_network_peering" {
  value       = module.peering.peer_network_peering
  description = "Peer network peering resource."
}

output "complete" {
  value       = module.peering.complete
  description = "Output to be used as a module dependency."
}

output "state" {
  value       = module.peering.state
  description = "State for the peering, either ACTIVE or INACTIVE. The peering is ACTIVE when there's a matching configuration in the peer network."
}

output "state_details" {
  value       = module.peering.state_details
  description = "Details about the current state of the peering."
}