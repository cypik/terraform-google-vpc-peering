output "local_network_peering" {
  description = "Network peering resource."
  value       = google_compute_network_peering.local_network_peering
}

output "peer_network_peering" {
  description = "Peer network peering resource."
  value       = google_compute_network_peering.peer_network_peering
}

output "complete" {
  description = "Output to be used as a module dependency."
  value       = null_resource.complete.id
}

output "state" {
  description = "State for the peering, either ACTIVE or INACTIVE. The peering is ACTIVE when there's a matching configuration in the peer network."
  value       = join("", google_compute_network_peering.peer_network_peering[*].state, google_compute_network_peering.local_network_peering[*].state)
}

output "state_details" {
  description = "Details about the current state of the peering."
  value       = join("", google_compute_network_peering.peer_network_peering[*].state, google_compute_network_peering.local_network_peering[*].state)
}