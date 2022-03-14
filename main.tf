terraform {
  backend "gcs" {
      bucket = "gcp-3f851c77-tf-state"
      prefix = "terraform-state"
  }
}

resource "null_resource" "null" {
    triggers = {
        value = "do nothing"
    }
}