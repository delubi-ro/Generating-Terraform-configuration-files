terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "my-dns-policy"
  zone = "europe-west1-b"
  description = "Terraform dns policy"

  # DNS Policy
  rules {
    # Allow access to google.com
    protocol = "tcp"
    ports = ["80", "443"]
  }

  # Allow access from anywhere
  rule_action {
    action = "allow"
    priority = 1
    match {
      versioned_expr = "src_ip.google.com"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "Allow access from anywhere"
  }

  # Allow access from anywhere
  rule_action {
    action = "allow"
    priority = 1
    match {
      versioned_expr = "src_ip.google.com"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "Allow access from anywhere"
  }

  # Allow access from anywhere
  rule_action {
    action = "allow"
    priority = 1
    match {
      versioned_expr = "src_ip.google.com"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "Allow access from anywhere"
  }

  # Allow access from anywhere
  rule_action {
    action = "allow"
    priority = 1
    match {
      versioned_expr = "src_ip.google.com"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "Allow access from anywhere"
  }
}

