variable "image" {
  type = "string"
  default = "alpine:latest"
}

resource "helm_release" "test" {
  name = "test"
  chart = "./test-chart"

  set {
    name = "image"
    value = "${var.image}"
  }
}
