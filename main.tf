resource "null_resource" "create_dirs" {
  provisioner "local-exec" {
    command = <<EOT
      mkdir -p /tmp/tf-dir1
      mkdir -p /tmp/tf-dir2
    EOT
  }
}

resource "null_resource" "create_files" {
  provisioner "local-exec" {
    command = <<EOT
      touch /tmp/tf-dir1/file1.txt
      touch /tmp/tf-dir2/file2.txt
    EOT
  }

  depends_on = [null_resource.create_dirs]
}

