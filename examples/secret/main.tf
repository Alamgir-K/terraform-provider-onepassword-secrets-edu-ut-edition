terraform {
  required_providers {
    onepassword = {
      source = "hashicorp.com/edu/onepassword"

    }
  }
}

provider "onepassword" {}

resource "onepassword_secret" "edu" {
  vault = "test"
  title = "newtitle"
  password_recipe = {
    character_set = ["digits", "letters"]
    length        = 30
  }
}

output "new_secret" {
  value = onepassword_secret.edu
}
