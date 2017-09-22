variable "node_count" {
  description = "The number of minion nodes you want to create"
  default = "1"
}

variable "subnetwork" {
  description = "The name of the subnet to use"
}

variable "name" {
  description = "computer name for the master node(s)"
}
