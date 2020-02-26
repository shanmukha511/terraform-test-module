resource "google_compute_address" "int-static-ip" {
  name         = "${var.vm_name}-int-internal-ip"
  subnetwork   = "${var.subnet}"
  address_type = "INTERNAL"
  region       = "${var.region}"
}

resource "google_compute_instance" "default" {
  name         = "${var.vm_name}-int"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
      type  = "pd-standard"
      size  = "${var.disk_size}"
    }
  }

  network_interface {
    network = "${var.network}"
    subnetwork = "${var.subnet}"
    network_ip = "${google_compute_address.int-static-ip.address}"

  }

  // Apply the firewall rule to allow external IPs to access this instance
  //tags = ["http-server"]
}
