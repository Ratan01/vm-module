provider "azurerm" {
    features {  
    }
    client_id= "1105cb82-7c79-4a90-8822-45dc9f6f1c46"
    client_secret= "qsQ8Q~j6j3Bxi~Z8F60-hmYf1BGe~GTUpiASedgJ"
    subscription_id= "53fc9b60-e863-4a92-a385-97d5cfe2d7ec"
    tenant_id= "0e083f14-f4a1-4950-846c-c36235ef9a6f"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71.0"
    }
  }
}