data "onepassword-secrets-edu-ut-edition_reference" "edu" {
  vault = "test"
  item  = "uber"
  field = "password"
}