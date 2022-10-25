terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.16.0"
    }

    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }

  backend "pg" {
    conn_str = "postgres://tf:tf-pass@localhost/tf_db?sslmode=disable"
  }
}
