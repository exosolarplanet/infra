terraform {
  backend "gcs" {
    bucket = "gcp-3f851c77-tf-state"
    prefix = "terraform-state"
  }
}

resource "null_resource" "null" {
  triggers = {
    value = "do nothing"
  }
}

resource "google_compute_network" "vpc_network" {
  project = "gcp-3f851c77"
  name = "vpc-network"
}

# resource "google_compute_subnetwork" "network1" {
#   name          = "test-subnetwork1"
#   ip_cidr_range = "10.2.0.0/16"
#   region        = "europe-west1"
#   network       = google_compute_network.vpc_network.id
# }

# resource "google_compute_subnetwork" "network2" {
#   name          = "test-subnetwork2"
#   ip_cidr_range = "10.2.0.0/16"
#   region        = "europe-west2"
#   network       = google_compute_network.vpc_network.id
# }

#  resource "google_compute_instance" "vm1" {
#     name = "vm1"
#     machine_type = "e2-medium"
#     zone = "europe-west1-a"

#     boot_disk {
#       initialize_params {
#           image = "debian-cloud/debian-9"
#       }
#     }

#     network_interface {
#         network = google_compute_subnetwork.network1.id
#     }

# }

# resource "google_compute_instance" "vm2" {
#     name = "vm2"
#     machine_type = "e2-medium"
#     zone = "europe-west2-a"

#     boot_disk {
#       initialize_params {
#           image = "debian-cloud/debian-9"
#       }
#     }

#     network_interface {
#         network = google_compute_subnetwork.network2.id
#     }
# }

