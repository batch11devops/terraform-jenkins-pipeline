variable "name" {
  default = "Raksha"
}

resource "local_file" "personalized_greeting" {
  filename = "${path.module}/message.txt"
  content  = "Hello, ${var.name}! resource 3 created"
}


