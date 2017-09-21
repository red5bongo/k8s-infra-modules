variable "node_count" {
  description = "The number of minion nodes you want to create"
  default = "1"
}

variable "network" {
  description = "The name of VPC to use"
  default = "${google_compute_network.default.self_link}"
}
