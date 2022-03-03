resource "random_string" "password" {
  length           = 8
  special          = true
  override_special = "!#$%&*()"
  min_lower = 1
  min_upper = 1
  min_special = 1
  
}

