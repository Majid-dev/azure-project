terraform {
  cloud {

    organization = "poorsam"

    workspaces {
      name = "azure-assignment"
    }
  }
}