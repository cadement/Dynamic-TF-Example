provider "docker" {}

module "nginx" {
  count = length(var.servers)
  source = "./nginx"
  container_name = var.servers[count.index].name
  nginx_port     = var.servers[count.index].port
}

variable "servers" {
  type = list(object({
    name = string
    port = string
  }))
}