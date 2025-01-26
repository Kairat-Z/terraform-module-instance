# terraform-module-instance


```hcl
module "instance" {
  source  = "Kairat-Z/instance/module"
  version = "2.0.0"
  instance_type = "t2.micro" # Replace with your value
  instance_name = "Kaizen-Kairat" # Replace with your value
}
```

Please note, you will need a file apache.sh with following parameters to confugire your ec2 instance:

#!/bin/bash

sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2