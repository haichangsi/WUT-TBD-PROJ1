variable "registry_hostname" {
  type        = string
  description = "Image registry hostname"
}

variable "registry_repo_name" {
  type        = string
  description = "Image registry repository name"
  default     = "tbd-2024l-336368"
}

variable "jupyterlab_version" {
  type        = string
  description = "Jupyterlab version"
  default     = "3.6.3"
}

variable "spark_version" {
  type        = string
  description = "Apache Spark version"
  default     = "3.3.2"
}

variable "gcs_connector_version" {
  type        = string
  description = "GCS connector version"
  default     = "2.2.17"
}

variable "project_name" {
  type        = string
  description = "Project name"
  default     = "tbd-2024l-336368"
}

variable "dbt_version" {
  type        = string
  description = "dbt core version"
  default     = "1.7.13"
}

variable "dbt_spark_version" {
  type        = string
  description = "dbt-spark version"
  default     = "1.7.1"
}
