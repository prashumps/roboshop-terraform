env = "dev"

ip_configuration_subnet_id = "/subscriptions/fce3d656-0949-412a-9e49-d5c96a4783c9/resourceGroups/project-setup/providers/Microsoft.Network/virtualNetworks/project-setup-network/subnets/default"
storage_image_reference_id = "/subscriptions/fce3d656-0949-412a-9e49-d5c96a4783c9/resourceGroups/project-setup/providers/Microsoft.Compute/images/local-devops-practice"
zone_name = "prashumps.online"
dns_record_rg_name = "project-setup"
network_security_group_id = "/subscriptions/fce3d656-0949-412a-9e49-d5c96a4783c9/resourceGroups/project-setup/providers/Microsoft.Network/networkSecurityGroups/project-setup-allow-all"
databases = {
  mongodb = {
    rgname = "ukwest"
  }
  rabbitmq = {
    rgname = "ukwest"
  }
  mysql = {
    rgname = "ukwest"
  }
  redis = {
    rgname = "ukwest"
  }
}
applications = {
  frontend = {
    rgname = "ukwest"
  }
  catalogue = {
    rgname = "ukwest"
  }
  cart = {
    rgname = "ukwest"
  }
  shipping = {
    rgname = "ukwest"
  }
  payment = {
    rgname = "ukwest"
  }
  user = {
    rgname = "ukwest"
  }
}

rg_name = {
  ukwest = {
    location = "UK West"
  }
}

aks = {
  main-dev = {
    rgname = "ukwest"
  }
}
