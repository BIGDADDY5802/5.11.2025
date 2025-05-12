#4-router.tf

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iarouter" {
  name    = "iarouter"
  region  = "us-central1"
  network = google_compute_network.cwglobal.id
}

resource "google_compute_router" "sarouter" {
  name    = "sarouter"
  region  = "southamerica-east1"
  network = google_compute_network.cwglobal2.id
}

resource "google_compute_router" "asiarouter" {
  name    = "asiarouter"
  region  = "asia-northeast1"
  network = google_compute_network.cwglobal3.id
}