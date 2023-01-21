# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm",
      version = "=2.89.0"
    }
  }


}

provider "azurerm" {
  features {}
  subscription_id = "4548dc4d-f5e2-41d2-889f-e759735da7e6"
}


provider "tls" {
  version = "2.1.0"
}

provider "kubernetes" {
  version = "1.10.0"
  host    = azurerm_kubernetes_cluster.cluster.kube_config[0].host

  client_certificate     = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate)
}
