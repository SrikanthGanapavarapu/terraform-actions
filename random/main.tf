resource "random_string" "password" {
  length           = 10
  special          = true
  override_special = "!#$%&*()"
  min_lower = 2
  min_upper = 1
  min_special = 1
  
}

resource "null_resource" "pasres" {
    provisioner "local-exec" {
      command = "echo Hi ${var.userid} , your password is: \"${random_string.password.result}\" > result.txt"
      working_dir = "./"
    }
  
}

variable "userid" {
  type = string
}
