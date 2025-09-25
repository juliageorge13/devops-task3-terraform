# Use Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pull a Docker image
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

# Create a container from the image
resource "docker_container" "nginx_container" {
  image = docker_image.nginx_image.latest
  name  = "demo-nginx-container"
  ports {
    internal = 80
    external = 8080
  }
}
