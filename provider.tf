provider "hcp" {}

provider "tfe" {
  hostname     = "app.terraform.io"
  organization = "hashiconf22"
  token = var.TFE_TOKEN_TFE
}