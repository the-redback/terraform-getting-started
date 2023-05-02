# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for the EKS cluster and all its associated resources"
  type        = string
  default     = "kubernetes-example-m29"
}

variable "app_name" {
  description = "The name to use for the app deployed into the EKS cluster"
  type        = string
  default     = "simple-webapp"
}

