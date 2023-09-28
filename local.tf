
resource "local_file" "exemplo"{
    filename = "exemplo.txt"
    content = var.name
}

data "local_file" "name_example"{
    filename = "exemplo.txt"
}

output "data-source-result"{
    value = data.local_file.name_example.content_base64
}

variable "name" {
    type = string
    default = "hello"
}

output "id-file" {
    value = resource.local_file.exemplo.id
}

output "name" {
    value = var.name
}