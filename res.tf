resource "local_file" "f1" {
  filename = var.filename1
  content  = var.content
}
resource "local_file" "f2" {
  filename = var.filename2
  content  = var.content
}
resource "local_file" "f3" {
  filename = var.filename3
  content  = var.content
}
resource "local_file" "f4" {
  filename = var.filename4
  content  = var.content
}

resource "local_file" "f5" {
  filename = var.filename5[0]
  content  = var.content
}
resource "local_file" "f6" {
  filename = var.filename6[2]
  content  = var.content
}
resource "local_file" "f7" {
  filename = var.filename7.name
  content  = var.content
}
resource "local_file" "f8" {
  filename = var.filename8.id
  content  = var.content
}

resource "local_file" "f9" {
  filename = var.filename9[3][1]
  content  = var.content
}

