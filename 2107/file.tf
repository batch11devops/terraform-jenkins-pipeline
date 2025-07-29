resource "local_file" "filecreateion" {
filename = "raksha.txt"
content = "this content belongs to raksha"
}

resource "null_resource" "create_folder" {
  provisioner "local-exec" {
    command = "mkdir -p ./resource2_raksha"
  }
}
variable "name" {
  default = "Raksha"
}

resource "local_file" "personalized_greeting" {
  filename = "${path.module}/greeting.txt"
  content  = "Hello, ${var.name}! resource 3"
}

