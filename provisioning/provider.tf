terraform {

    required_providers {

      kubernetes = {

        source  = "hashicorp/kubernetes"
        version = "2.16.1"

      }

    }

    backend "local" {

      path = "/tmp/terraform.tfstate"
    }

}



provider "kubernetes" {

  host = "https://192.168.49.2:8443"
  config_path = "~/.kube/config"
}


