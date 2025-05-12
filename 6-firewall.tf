#6-firewall.tf

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.cwglobal.name

  allow {
    protocol      = "tcp"
    ports         = ["22"]
  }

  allow {
    protocol      = "tcp"
    ports         = ["80"]
    
  }
source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-ssh2" {
  name    = "allow-ssh2"
  network = google_compute_network.cwglobal2.name
  allow {
    protocol      = "tcp"
    ports         = ["22"]
  }

  allow {
    protocol      = "tcp"
    ports         = ["80"]
    
  }
source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-ssh3" {
  name    = "allow-ssh3"
  network = google_compute_network.cwglobal3.name
  allow {
    protocol      = "tcp"
    ports         = ["22"]
  }

  allow {
    protocol      = "tcp"
    ports         = ["80"]
    
  }
source_ranges = ["0.0.0.0/0"]
}