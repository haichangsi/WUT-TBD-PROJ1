variable "project_name" {
  type        = string
  description = "Project name"
}

variable "region" {
  type        = string
  default     = "europe-west1"
  description = "GCP region"
}

variable "subnet" {
  type        = string
  description = "VPC subnet used for deployment"
}

variable "machine_type" {
  type        = string
  default     = "e2-medium"
  description = "Machine type to use for both worker and master nodes"
}

variable "image_version" {
  type    = string
  default = "2.1.27-ubuntu20"
}

variable "no_worker_nodes" {
  type        = number
  description = "configurable number of worker nodes"
}

variable "dataproc_workers_preemptible" {
  type        = number
  default     = 1
  description = "number of preemptible workers in dataproc cluster"
}

variable "worker_nodes_number" {
  type        = number
  description = "configurable number of worker nodes"
}

variable "worker_nodes_number_preemptible" {
  type        = number
  description = "configurable number of worker nodes"
}