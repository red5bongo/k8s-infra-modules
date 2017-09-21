resource "google_compute_instance" "default" {
  count = "${var.node_count}"
  name           = "node-minion-${count.index}"
  machine_type   = "g1-small"
  zone		 = "us-west1-a"
  tags = ["terraform"]
  boot_disk {
    initialize_params {
      image = "ubuntu-1704-zesty-v20170811"
      }
  }
  network_interface {
    subnetwork = "${var.subnetwork}"
  }
}
