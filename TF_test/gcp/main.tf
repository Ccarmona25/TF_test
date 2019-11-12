provider "google-beta"  {
  credentials = "${file("${var.gcp_credential_path}")}"
  project     = "${var.project_id}"
  region      = "us-east1"

}
resource " google_compute_instance" "default" {
	name                   = "ccServer"
	description            = "This is my instance mofo!"
	
	instance_description " = "My intance is better than yours"
	machine type           = "n1-standard-1"
}


variable "project_id" {
  type        = "string"
  description = "The project id to wire-up the logging."
  default     = ""
}

variable "gcp_credential_path" {
  type        = "string"
  description = "GCP Credential contains pk."
  default     = ""
}