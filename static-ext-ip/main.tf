resource "google_compute_address" "static-ip" {
  name = "${var.static-ip-name}"
  address_type = "EXTERNAL"
  region = "${var.region}"
}
