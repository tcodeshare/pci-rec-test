
#-------------------------------------------------------------------------------
# Security groups
#-------------------------------------------------------------------------------


## HTTP
resource "openstack_compute_secgroup_v2" "http" {
  name        = "http"
  description = "Open input http port"
  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}


# SSH
resource "openstack_compute_secgroup_v2" "ssh" {
  name        = "ssh"
  description = "Open input ssh port"
  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

