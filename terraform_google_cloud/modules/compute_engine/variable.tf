variable "gcp_compute_lab" {
  type        = string
  default     = "bamideletemitope-instance"
  description = "compute instance name"
  sensitive   = true

}
variable "machine_type" {
  type        = string
  default     = "n2-standard-2"
  description = "machine type"
  sensitive   = true
}

variable "project_id" {
  type        = string
  default     = "de-engr"
  description = "project id"
  sensitive   = true

}
