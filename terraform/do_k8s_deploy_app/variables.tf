variable "do_token" {
  type        = string
  description = "Your DigitalOcean API token. See https://cloud.digitalocean.com/account/api/tokens to generate a token."
  sensitive   = true
}

variable "cluster_name" {
  type  = string
  description = "Name for Kubernetes Cluster"
  validation {
    condition     = can(regex("^[0-9A-Za-z_-]+$", var.cluster_name))
    error_message = "Enter a valid group number. Tip: it doesnt strictly need to be a number, but it must only contain letters, numbers, underscores and dashes."
  }  
}

variable "docker_image" {
  type        = string
  description = "name of the docker image to deploy"
  default     = "ariv3ra/nodejs-circleci:latest"
}



variable "k8s_cluster_endpoint" {
  description = "Kubernetes API server endpoint"
  type        = string
}

variable "k8s_cluster_token" {
  description = "Kubernetes API server token"
  type        = string
  sensitive   = true
}

variable "k8s_cluster_ca_certificate" {
  description = "Kubernetes CA certificate"
  type        = string
  sensitive   = true
}
