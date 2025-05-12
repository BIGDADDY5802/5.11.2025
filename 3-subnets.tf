#3-subnets.tf

resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.190.255.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.cwglobal.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "iaapp01" {
  name                     = "iaapp01"
  ip_cidr_range            = "10.190.245.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.cwglobal.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "saopaolo1" {
  name                     = "saopaolo1"
  ip_cidr_range            = "10.190.52.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.cwglobal2.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "saapp01" {
  name                     = "saapp01"
  ip_cidr_range            = "10.190.42.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.cwglobal2.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "saapp02" {
  name                     = "saapp02"
  ip_cidr_range            = "10.190.41.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.cwglobal2.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyo1" {
  name                     = "tokyo1"
  ip_cidr_range            = "10.190.92.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.cwglobal3.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "asiaapp01" {
  name                     = "asiaapp01"
  ip_cidr_range            = "10.190.82.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.cwglobal3.id
  private_ip_google_access = true
}
