provider "google" {
  project = "soy-smile-435017-c5"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

data "google_compute_network" "my-network" {
  name = "default"
}
data "google_compute_network" "my-network1" {
  name = "app-test-vpc"
}

#####==============================================================================
##### vpc-peering module call.
#####==============================================================================
module "peering" {
  source        = "../"
  vpc_1_name    = "app"
  vpc_2_name    = "app1"
  environment   = "test"
  local_network = data.google_compute_network.my-network.self_link
  peer_network  = data.google_compute_network.my-network1.self_link
}