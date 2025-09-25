terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"   # Windows Docker named pipe
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = "terraform-nginx"
  image = docker_image.nginx.id
  ports {
    internal = 80
    external = 8080
  }
}
