variable "project_name" {
  type        = string
  description = "Project name"
}

variable "region" {
  type        = string
  default     = "europe-west1"
  description = "GCP region"
}

variable "ai_notebook_instance_owner" {
  type        = string
  description = "Vertex AI workbench owner"
}

variable "dataproc_machine_type" {
  type        = string
  default     = "e2-standard-2"
  description = "Machine to be utilized in dataproc cluster"
}

variable "dataproc_num_workers" {
  type        = number
  default     = 2
  description = "number of worker machines to be created in dataproc cluster"
}

variable "vertex_machine_type" {
  type        = string
  default     = "e2-standard-2"
  description = "Machine type to be used in the vertexAI notebooks"
}

variable "dataproc_workers_preemptible" {
  type        = number
  default     = 0
  description = "Number of dataproc preemptible workers"
}

variable "no_workers" {
  type        = number
  default     = 2
  description = "number of worker nodes"
}