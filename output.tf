output "local_network_peering" {
  value       = google_compute_network_peering.local_network_peering
  description = "Network peering resource."
}

output "peer_network_peering" {
  value       = google_compute_network_peering.peer_network_peering
  description = "Peer network peering resource."
}

output "complete" {
  value       = null_resource.complete.id
  description = "Output to be used as a module dependency."
}

output "state" {
  value       = join("", google_compute_network_peering.peer_network_peering[*].state, google_compute_network_peering.local_network_peering[*].state)
  description = "State for the peering, either ACTIVE or INACTIVE. The peering is ACTIVE when there's a matching configuration in the peer network."
}

output "state_details" {
  value       = join("", google_compute_network_peering.peer_network_peering[*].state, google_compute_network_peering.local_network_peering[*].state)
  description = "Details about the current state of the peering."
}