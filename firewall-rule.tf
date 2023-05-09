resource "google_compute_firewall" "allow-http-https" {
  name    = "allow-http-https"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80","443","8080"]
  }

  source_ranges = ["0.0.0.0/0"]
}

/*In the above example, we are creating a firewall rule named "allow-http" that allows incoming TCP traffic on port 80 from any source IP address. We are using the default network in the GCP project.

1.  Run terraform init to initialize the Terraform environment, followed by terraform plan to see the plan for creating the firewall rule.

2.  Finally, run terraform apply to apply the changes and create the firewall rule in GCP.

You can modify the parameters of the google_compute_firewall resource block as per your requirements to create more complex firewall rules*/
