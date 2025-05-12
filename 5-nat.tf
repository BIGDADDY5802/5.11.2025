#5-nat.tf

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "ianat" {
  name   = "ianat"
  router = google_compute_router.iarouter.name
  region = "us-central1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.hqinternal.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.ianat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "ianat" {
  name         = "ianat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "us-central1"
}

resource "google_compute_router_nat" "sanat" {
  name   = "sanat"
  router = google_compute_router.sarouter.name
  region = "southamerica-east1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.saopaolo1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.sanat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "sanat" {
  name         = "sanat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "southamerica-east1"
}

resource "google_compute_router_nat" "asianat" {
  name   = "asianat"
  router = google_compute_router.asiarouter.name
  region = "asia-northeast1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.tokyo1.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.asianat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "asianat" {
  name         = "asianat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "asia-northeast1"
}