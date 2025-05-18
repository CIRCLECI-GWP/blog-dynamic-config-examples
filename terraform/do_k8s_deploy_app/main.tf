terraform {

  required_version = ">= 0.13"

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = ">= 2.25.0"
    }
    local = {
      source = "hashicorp/local"
    }
  }

  backend "remote" {
    organization = "CircleCI-Author-Program"
    workspaces {
      name = "deploy-iac-do"
    }
  }
}

provider "kubernetes" {
}