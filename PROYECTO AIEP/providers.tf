provider "google" {         #Credenciales y proovedores
  credentials = file("pass.json")

  project = "cloudbuilders-386020" #cloudbuilders
  region  = "us-central1"
  zone    = "us-central1-c"
}

provider "google" {
  credentials = file("pass2.json")
  
  project = "cloudbuilders-386200" #cloudbuilders2
  region  = "us-central1"
  zone   = "us-central1-c"
}

provider "google" {
  credentials = file("pass3.json")

  project = "CloudBuilders3"
  region  = "us-central1"
  zone   = "us-central1-c"
}