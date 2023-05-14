
         #VPC NETWORK
resource "google_compute_network" "vpc_network" {
  name                    = "vpc1"
  auto_create_subnetworks = false
}

      #puertos 

      #recurso para conectar las computadoras
resource "google_compute_firewall" "allow_internal_traffic" {
  name    = "allow-internal-traffic"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "all"
  }

  source_ranges = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

resource "google_compute_subnetwork" "subnet" {
  name          = "cloud1"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.self_link
  region        = "us-central1"
}

resource "google_compute_address" "internal_ip" {
  name = "my-internal-ip"
  address_type = "INTERNAL"
  subnetwork = google_compute_subnetwork.subnet.self_link
  address = "10.0.1.10"
}


                      #CloudBuilders




         #VIRTUAL MACHINE 1 
resource "google_compute_instance" "vm1" {   
  name         = "maquina-virtual-1"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {         }
}
    
      
  project = "cloudbuilders-386020"

}

          #VIRTUAL MACHINE 2
resource "google_compute_instance" "vm2" { 
  name         = "maquina-virtual-2"
  machine_type = "f1-micro"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link
    
    

    access_config {          }
      # No se necesita configurar ya que es una dirección IP interna
    }
  
   project = "cloudbuilders-386020"
}
          #VIRTUAL MACHINE 3 
resource "google_compute_instance" "vm3" {
  name         = "maquina-virtual-3"
  machine_type = "f1-micro"   
    #

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {       }
      # No se necesita configurar ya que es una dirección IP interna
    }
  
   project = "cloudbuilders-386020"
}
          #VIRTUAL MACHINE 4 
resource "google_compute_instance" "vm4" {
  name         = "maquina-virtual-4"   #Nombre de instancia
  machine_type = "f1-micro"     #Tipo de Maquina

  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10" 
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {       }
      # No se necesita configurar ya que es una dirección IP interna
    
  }
   project = "cloudbuilders-386020"
}


               #NEW

            #Cloudbuilders2

            #VIRTUAL MACHINE 1 
resource "google_compute_instance" "vm5" {   
  name         = "maquina-virtual-1"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {         }
      # No se necesita configurar ya que es una dirección IP interna
    }
  
   project = "cloudbuilders-386200"
}
          #VIRTUAL MACHINE 2
resource "google_compute_instance" "vm6" { 
  name         = "maquina-virtual-2"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {       }
      # No se necesita configurar ya que es una dirección IP interna
    }
  
  project = "cloudbuilders-386200"
}
          #VIRTUAL MACHINE 3 
resource "google_compute_instance" "vm7" {
  name         = "maquina-virtual-3"
  machine_type = "f1-micro" 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnet.self_link

    access_config {        }
      # No se necesita configurar ya que es una dirección IP interna
    }
  
   project = "cloudbuilders-386200"
 }

                 #NEW