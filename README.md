# terraform-gcp-vpc-peering
# Google Cloud Infrastructure Provisioning with Terraform
## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [License](#license)

## Introduction
This project deploys a Google Cloud infrastructure using Terraform to create VPC-PEERING.
## Usage
To use this module, you should have Terraform installed and configured for GCP. This module provides the necessary Terraform configuration for creating GCP resources, and you can customize the inputs as needed. Below is an example of how to use this module:

# Example: vpc-peering
```hcl
module "peering" {
  source        = "git::https://github.com/cypik/terraform-gcp-vpc-peering.git?ref=v1.0.0"
  vpc_1_name    = "test"
  vpc_2_name    = "test1"
  local_network = data.google_compute_network.my-network.self_link
  peer_network  = data.google_compute_network.my-network1.self_link
}

```
You can customize the input variables according to your specific requirements.

## Module Inputs

- 'name' The name of the vpc-peering.
- 'local_network': The primary network of the peering.
- 'peer_network' The peer network in the peering. The peer network may belong to a different project.

## Module Outputs
Each module may have specific outputs. You can retrieve these outputs by referencing the module in your Terraform configuration.

- 'local_network_peering' Network peering resource.
- 'peer_network_peering': Peer network peering resource.
- 'complete' : Output to be used as a module dependency.
- 'state' : State for the peering, either ACTIVE or INACTIVE.
- 'state_details' : Details about the current state of the peering.

## Examples
For detailed examples on how to use this module, please refer to the '[examples](https://github.com/cypik/terraform-gcp-vpc-peering/blob/master/example)' directory within this repository.

## Author
Your Name Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/cypik/terraform-gcp-vpc-peering/blob/master/LICENSE) file for details.
