variable "git" {
  type        = string
  default     = "Data_Engineering_learning"
  description = "git repo"
  sensitive   = true

}

variable "token" {
  description = "token for git access"
  type        = string
  sensitive   = true
}
