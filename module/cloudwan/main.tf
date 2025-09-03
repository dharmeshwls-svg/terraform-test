


resource "aws_networkmanager_core_network" "my_network" {
  global_network_id = aws_networkmanager_global_network.globalnetwork.id
  description       = var.description
  tags              = var.tags


}

resource "aws_networkmanager_global_network" "globalnetwork" {
  description = "Global network for CloudWAN"
  tags        = var.tags
}


 


