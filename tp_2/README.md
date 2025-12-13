## CREATION NSG ET ASSOCIATION NIC🌞



``` PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> terraform plan
azurerm_resource_group.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2]
azurerm_public_ip.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/publicIPAddresses/vm-ip]
azurerm_virtual_network.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/virtualNetworks/vm-vnet]
azurerm_subnet.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/virtualNetworks/vm-vnet/subnets/vm-subnet]
azurerm_network_interface.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkInterfaces/vm-nic]
azurerm_linux_virtual_machine.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Compute/virtualMachines/super-vm]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_network_interface_security_group_association.nsg_nic_assoc will be created
  + resource "azurerm_network_interface_security_group_association" "nsg_nic_assoc" {
      + id                        = (known after apply)
      + network_interface_id      = "/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkInterfaces/vm-nic"
      + network_security_group_id = (known after apply)
    }

  # azurerm_network_security_group.vm_nsg will be created
  + resource "azurerm_network_security_group" "vm_nsg" {
      + id                  = (known after apply)
      + location            = "francecentral"
      + name                = "nsg-vm-ssh"
      + resource_group_name = "test2"
      + security_rule       = [
          + {
              + access                                     = "Allow"
              + access                                     = "Allow"
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "22"
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + access                                     = "Allow"
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + access                                     = "Allow"
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "22"
              + destination_port_range                     = "22"
              + destination_port_ranges                    = []
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + direction                                  = "Inbound"
              + name                                       = "Allow-SSH-From-My-IP"
              + name                                       = "Allow-SSH-From-My-IP"
              + priority                                   = 100
              + protocol                                   = "Tcp"
              + source_address_prefix                      = "46.193.69.134/32"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
    }
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
    }

              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
    }
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_application_security_group_ids      = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_application_security_group_ids      = []
              + source_application_security_group_ids      = []
              + source_application_security_group_ids      = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
    }

Plan: 2 to add, 0 to change, 0 to destroy.

````


## PROOF🌞



````
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> terraform apply
azurerm_resource_group.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2]
azurerm_public_ip.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/publicIPAddresses/vm-ip]
azurerm_virtual_network.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/virtualNetworks/vm-vnet]
azurerm_subnet.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/virtualNetworks/vm-vnet/subnets/vm-subnet]
azurerm_network_interface.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkInterfaces/vm-nic]
azurerm_linux_virtual_machine.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Compute/virtualMachines/super-vm]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_network_interface_security_group_association.nsg_nic_assoc will be created
  + resource "azurerm_network_interface_security_group_association" "nsg_nic_assoc" {
      + id                        = (known after apply)
      + network_interface_id      = "/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkInterfaces/vm-nic"
      + network_security_group_id = (known after apply)
    }

  # azurerm_network_security_group.vm_nsg will be created
  + resource "azurerm_network_security_group" "vm_nsg" {
      + id                  = (known after apply)
      + location            = "francecentral"
      + name                = "nsg-vm-ssh"
      + resource_group_name = "test2"
      + security_rule       = [
          + {
              + access                                     = "Allow"
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "22"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "Allow-SSH-From-My-IP"
              + priority                                   = 100
              + protocol                                   = "Tcp"
              + source_address_prefix                      = "46.193.69.134/32"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
                # (1 unchanged attribute hidden)
            },
        ]
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azurerm_network_security_group.vm_nsg: Creating...
azurerm_network_security_group.vm_nsg: Creation complete after 3s [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkSecurityGroups/nsg-vm-ssh]
azurerm_network_interface_security_group_association.nsg_nic_assoc: Creating...
azurerm_network_interface_security_group_association.nsg_nic_assoc: Creation complete after 6s [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkInterfaces/vm-nic|/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkSecurityGroups/nsg-vm-ssh]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

public_ip_address = "4.212.91.140"
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> 
````


## Resultat de la commande AZ


````
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> az network nic show --resource-group test2 --name vm-nic --query "networkSecurityGroup" -o json
>> 
{
  "id": "/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkSecurityGroups/nsg-vm-ssh",
  "resourceGroup": "test2"
}

````

## Connexion SSH

````
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> az vm start --resource-group test2 --name super-vm
>> 
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> ssh -A -p 22 jjk@4.212.91.140
>> 
The authenticity of host '4.212.91.140 (4.212.91.140)' can't be established.
ED25519 key fingerprint is SHA256:7my3eRLvfv7XwHXTKd6ze4CSLxNNO9j10PTDWGn6C+M.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '4.212.91.140' (ED25519) to the list of known hosts.
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1089-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Sat Dec 13 14:31:54 UTC 2025

  System load:  0.54              Processes:             117
  Usage of /:   6.8% of 28.89GB   Users logged in:       0
  Memory usage: 29%               IPv4 address for eth0: 10.0.1.4
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

Expanded Security Maintenance for Infrastructure is not enabled.

10 updates can be applied immediately.
To see these additional updates run: apt list --upgradable

47 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 20.04 at
https://ubuntu.com/20-04


The list of available updates is more than a week old.
To check for new updates run: sudo apt update


The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

jjk@super-vm:~$
````


````
jjk@super-vm:~$ sudo systemctl status sshd -l
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
     Active: active (running) since Sat 2025-12-13 14:45:23 UTC; 3s ago
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 2034 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 2035 (sshd)
      Tasks: 1 (limit: 1063)
     Memory: 1.0M
     CGroup: /system.slice/ssh.service
             └─2035 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups

Dec 13 14:45:23 super-vm systemd[1]: Starting OpenBSD Secure Shell server...
Dec 13 14:45:23 super-vm sshd[2035]: Server listening on 0.0.0.0 port 22.
Dec 13 14:45:23 super-vm sshd[2035]: Server listening on :: port 22.
Dec 13 14:45:23 super-vm systemd[1]: Started OpenBSD Secure Shell server.
jjk@super-vm:~$ sudo ss -tuln | grep 22
tcp    LISTEN  0       128            0.0.0.0:22          0.0.0.0:*
tcp    LISTEN  0       128               [::]:22             [::]:*
jjk@super-vm:~$ sudo ss -tuln | grep 2222
jjk@super-vm:~$
jjk@super-vm:~$ sudo sshd -t
jjk@super-vm:~$ sudo sed -i 's/^#Port 22/Port 2222/' /etc/ssh/sshd_config
rt 2222/' /etc/ssh/sshd_config
sudo systemctl restart sjjk@super-vm:~$ sudo sed -i 's/^Port 22/Port 2222/' /etc/ssh/sshd_config
jjk@super-vm:~$ sudo systemctl restart sshd
Job for ssh.service failed because the control process exited with error code.
See "systemctl status ssh.service" and "journalctl -xe" for details.
jjk@super-vm:~$ sudo ss -tuln | grep 2222
jjk@super-vm:~$
````
le port écoute toujours sur le 22





## ajout du domaine

````
resource "azurerm_public_ip" "main" {
  name                = "vm-ip"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  allocation_method   = "Static"
  sku                 = "Standard"
  domain_name_label = "super-vm-efrei"  # ajout du domaine
}

````
   ## Resultat du terraform apply

````
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> terraform apply
azurerm_resource_group.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2]
azurerm_public_ip.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/publicIPAddresses/vm-ip]
azurerm_network_security_group.vm_nsg: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkSecurityGroups/nsg-vm-ssh]
azurerm_virtual_network.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/virtualNetworks/vm-vnet]
azurerm_subnet.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/virtualNetworks/vm-vnet/subnets/vm-subnet]
azurerm_network_interface.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkInterfaces/vm-nic]
azurerm_network_interface_security_group_association.nsg_nic_assoc: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkInterfaces/vm-nic|/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Network/networkSecurityGroups/nsg-vm-ssh]
azurerm_linux_virtual_machine.main: Refreshing state... [id=/subscriptions/a3bd582e-88e4-4000-970e-b3e76914e628/resourceGroups/test2/providers/Microsoft.Compute/virtualMachines/super-vm]

Changes to Outputs:
  + fqdn              = "super-vm-efrei.francecentral.cloudapp.azure.com"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes


Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

fqdn = "super-vm-efrei.francecentral.cloudapp.azure.com"
public_ip_address = "4.212.91.140"
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform>
````


 ## CONNECTION VIA LE DNS



````
PS C:\Users\stephane\Desktop\Efrei\M1\cloud\Tp_cloudAzure\terraform> ssh jjk@super-vm-efrei.francecentral.cloudapp.azure.com
The authenticity of host 'super-vm-efrei.francecentral.cloudapp.azure.com (4.212.91.140)' can't be established.
ED25519 key fingerprint is SHA256:1JE2Tjuk8RWzFVikGxCqpKqaXlBZxAQIyzSOXMZ14aE.
This host key is known by the following other names/addresses:
    C:\Users\stephane/.ssh/known_hosts:7: 4.212.91.140
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'super-vm-efrei.francecentral.cloudapp.azure.com' (ED25519) to the list of known hosts.
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1089-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Sat Dec 13 19:47:30 UTC 2025

  System load:  0.0               Processes:             114
  Usage of /:   5.5% of 28.89GB   Users logged in:       1
  Memory usage: 31%               IPv4 address for eth0: 10.0.1.4
  Swap usage:   0%


Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


The list of available updates is more than a week old.
To check for new updates run: sudo apt update
New release '22.04.5 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Sat Dec 13 19:45:34 2025 from 46.193.69.134
jjk@super-vm:~$
````



 ## BLOB STORAGE INSTALLATION DE AZCOPY


````
 jjk@super-vm:~$ wget https://aka.ms/downloadazcopy-v10-linux -O azcopy.tar.gz
inux_amd64_*/install.sh--2025-12-13 22:48:38--  https://aka.ms/downloadazcopy-v10-linux
Resolving aka.ms (aka.ms)... 23.220.113.159
Connecting to aka.ms (aka.ms)|23.220.113.159|:443... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://github.com/Azure/azure-storage-azcopy/releases/download/v10.31.0/azcopy_linux_amd64_10.31.0.tar.gz [following]
--2025-12-13 22:48:39--  https://github.com/Azure/azure-storage-azcopy/releases/download/v10.31.0/azcopy_linux_amd64_10.31.0.tar.gz
Resolving github.com (github.com)... 140.82.121.4
Connecting to github.com (github.com)|140.82.121.4|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://release-assets.githubusercontent.com/github-production-release-asset/114798676/a7fab890-fa0b-4545-b72d-cdcc482f55ec?sp=r&sv=2018-11-09&sr=b&spr=https&se=2025-12-13T23%3A46%3A48Z&rscd=attachment%3B+filename%3Dazcopy_linux_amd64_10.31.0.tar.gz&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2025-12-13T22%3A46%3A47Z&ske=2025-12-13T23%3A46%3A48Z&sks=b&skv=2018-11-09&sig=RBWyiBSeJxisZegjvaSJkO5kDrSLBozHL2FdRKUTWbw%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc2NTY2Nzg4OSwibmJmIjoxNzY1NjY2MDg5LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.Xn42DjbAK435Gq-wJPD5hmMs98Bpe6DnTIf5xV3VK4A&response-content-disposition=attachment%3B%20filename%3Dazcopy_linux_amd64_10.31.0.tar.gz&response-content-type=application%2Foctet-stream [following]
--2025-12-13 22:48:39--  https://release-assets.githubusercontent.com/github-production-release-asset/114798676/a7fab890-fa0b-4545-b72d-cdcc482f55ec?sp=r&sv=2018-11-09&sr=b&spr=https&se=2025-12-13T23%3A46%3A48Z&rscd=attachment%3B+filename%3Dazcopy_linux_amd64_10.31.0.tar.gz&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2025-12-13T22%3A46%3A47Z&ske=2025-12-13T23%3A46%3A48Z&sks=b&skv=2018-11-09&sig=RBWyiBSeJxisZegjvaSJkO5kDrSLBozHL2FdRKUTWbw%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc2NTY2Nzg4OSwibmJmIjoxNzY1NjY2MDg5LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.Xn42DjbAK435Gq-wJPD5hmMs98Bpe6DnTIf5xV3VK4A&response-content-disposition=attachment%3B%20filename%3Dazcopy_linux_amd64_10.31.0.tar.gz&response-content-type=application%2Foctet-stream
Resolving release-assets.githubusercontent.com (release-assets.githubusercontent.com)... 185.199.109.133, 185.199.110.133, 185.199.111.133, ...
Connecting to release-assets.githubusercontent.com (release-assets.githubusercontent.com)|185.199.109.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 23130293 (22M) [application/octet-stream]
Saving to: ‘azcopy.tar.gz’

azcopy.tar.gz                                            100%[================================================================================================================================>]  22.06M   125MB/s    in 0.2s     

2025-12-13 22:48:39 (125 MB/s) - ‘azcopy.tar.gz’ saved [23130293/23130293]

jjk@super-vm:~$ tar -xvf azcopy.tar.gz
azcopy_linux_amd64_10.31.0/
azcopy_linux_amd64_10.31.0/azcopy
azcopy_linux_amd64_10.31.0/NOTICE.txt
jjk@super-vm:~$ sudo ./azcopy_linux_amd64_*/install.sh
sudo: ./azcopy_linux_amd64_*/install.sh: command not found
jjk@super-vm:~$ sudo ./azcopy_linux_amd64_*/install.sh
sudo: ./azcopy_linux_amd64_*/install.sh: command not found
jjk@super-vm:~$ cd azcopy_linux_amd64_*
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ ls -l azcopy
-rwxrwxr-x 1 jjk jjk 56021152 Oct 28 18:29 azcopy
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ sudo cp azcopy /usr/local/bin/
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ azcopy --version
azcopy version 10.31.0
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$
````


## BLOB STORAGE AUTHENTIFICATION AUTOMATIQUE


````
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ azcopy login --identity
INFO: Login with identity succeeded.
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ 
````


## BLOB STORAGE ECRITURE D'UN FICHIER



````
echo "Hello from AzCopy!" > testfile.txt
````

````
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ azcopy copy ./testfile.txt "https://supervmstorage.blob.core.windows.net/mycontainer/testfile.txt"
INFO: Scanning...
INFO: Autologin not specified.
INFO: Authenticating to destination using Azure AD
INFO: Any empty folders will not be processed, because source and/or destination doesn't have full folder support

Job f8eb5be6-8944-d846-5e76-7cfe31a1a4fc has started
Log file is located at: /home/jjk/.azcopy/f8eb5be6-8944-d846-5e76-7cfe31a1a4fc.log

100.0 %, 1 Done, 0 Failed, 0 Pending, 0 Skipped, 1 Total, 


Job f8eb5be6-8944-d846-5e76-7cfe31a1a4fc summary
Elapsed Time (Minutes): 0.0335
Number of File Transfers: 1
Number of Folder Property Transfers: 0
Number of Symlink Transfers: 0
Total Number of Transfers: 1
Number of File Transfers Completed: 1
Number of Folder Transfers Completed: 0
Number of File Transfers Failed: 0
Number of Folder Transfers Failed: 0
Number of File Transfers Skipped: 0
Number of Folder Transfers Skipped: 0
Number of Symbolic Links Skipped: 0
Number of Hardlinks Converted: 0
Number of Hardlinks Skipped: 0
Number of Special Files Skipped: 0
Total Number of Bytes Transferred: 19
Final Job Status: Completed

jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ 
````


## BLOB STORAGE LECTURE D'UN FICHIER

````
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ azcopy copy "https://supervmstorage.blob.core.windows.net/mycontainer/testfile.txt" ./downloaded_testfile.txt
INFO: Scanning...
INFO: Autologin not specified.
INFO: Authenticating to source using Azure AD
INFO: Any empty folders will not be processed, because source and/or destination doesn't have full folder support

Job 3d818419-ee18-ec43-6567-aa320fbf19bb has started
Log file is located at: /home/jjk/.azcopy/3d818419-ee18-ec43-6567-aa320fbf19bb.log

100.0 %, 1 Done, 0 Failed, 0 Pending, 0 Skipped, 1 Total, 


Job 3d818419-ee18-ec43-6567-aa320fbf19bb summary
Elapsed Time (Minutes): 0.0335
Number of File Transfers: 1
Number of Folder Property Transfers: 0
Number of Symlink Transfers: 0
Total Number of Transfers: 1
Number of File Transfers Completed: 1
Number of Folder Transfers Completed: 0
Number of File Transfers Failed: 0
Number of Folder Transfers Failed: 0
Number of File Transfers Skipped: 0
Number of Folder Transfers Skipped: 0
Number of Symbolic Links Skipped: 0
Number of Hardlinks Converted: 0
Number of Hardlinks Skipped: 0
Number of Special Files Skipped: 0
Total Number of Bytes Transferred: 19
Final Job Status: Completed

jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ cat downloaded_testfile.txt
Hello from AzCopy!
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$
````


## BLOB STORAGE EXPLICATION

Comment fonctionne azcopy login --identity

La commande azcopy login --identity utilise l’Managed Identity de la VM Azure pour s’authentifier sans mot de passe ni clé.

Concrètement :

La VM possède une Managed Identity (System Assigned ou User Assigned).

Azure expose un endpoint d’identité local accessible uniquement depuis la VM
(IMDS – Instance Metadata Service).

AzCopy appelle cet endpoint pour demander un token d’accès Azure AD.

Azure AD émet un JWT (JSON Web Token) signé, contenant :

l’identité de la VM (principal_id),

les rôles RBAC associés (ex : Storage Blob Data Contributor),

une durée de validité limitée.

AzCopy utilise ce JWT comme Bearer Token dans les requêtes HTTPS vers Azure Blob Storage.





## BLOB STORAGE REQUETER JWT

````
jjk@super-vm:~/azcopy_linux_amd64_10.31.0$ curl -s -H "Metadata:true" \
> "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https://storage.azure.com/"
{"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6InJ0c0ZULWItN0x1WTdEVlllU05LY0lKN1ZuYyIsImtpZCI6InJ0c0ZULWItN0x1WTdEVlllU05LY0lKN1ZuYyJ9.eyJhdWQiOiJodHRwczovL3N0b3JhZ2UuYXp1cmUuY29tLyIsImlzcyI6Imh0dHBzOi8vc3RzLndpbmRvd3MubmV0LzQxMzYwMGNmLWJkNGUtNGM3Yy04YTYxLTY5ZTczY2RkZjczMS8iLCJpYXQiOjE3NjU2NjgwMTQsIm5iZiI6MTc2NTY2ODAxNCwiZXhwIjoxNzY1NzU0NzE0LCJhaW8iOiJrMkpnWU5oODQvakZucXhIa1h5bE12NC9sS3JEQUE9PSIsImFwcGlkIjoiYjFmNDk1MmYtNTY3ZS00ZDA2LWI5MzAtNDU1YjM0OGYzYWE0IiwiYXBwaWRhY3IiOiIyIiwiaWRwIjoiaHR0cHM6Ly9zdHMud2luZG93cy5uZXQvNDEzNjAwY2YtYmQ0ZS00YzdjLThhNjEtNjllNzNjZGRmNzMxLyIsImlkdHlwIjoiYXBwIiwib2lkIjoiMDAyYjI1NGQtN2NjOS00ZDdhLWFiYjQtMmZlYTZiZDEwYmFhIiwicmgiOiIxLkFUc0F6d0EyUVU2OWZFeUtZV25uUE4zM01ZR21CdVRVODZoQ2tMYkNzQ2xKZXZFVkFRQTdBQS4iLCJzdWIiOiIwMDJiMjU0ZC03Y2M5LTRkN2EtYWJiNC0yZmVhNmJkMTBiYWEiLCJ0aWQiOiI0MTM2MDBjZi1iZDRlLTRjN2MtOGE2MS02OWU3M2NkZGY3MzEiLCJ1dGkiOiJTemF6czVFTV9VMmowRDhpNFZqOEFBIiwidmVyIjoiMS4wIiwieG1zX2FjdF9mY3QiOiIzIDkiLCJ4bXNfZnRkIjoiQ3JrLWthdWIwZ3lvd0NYSTVHZVJQYURyc09obGt6TUFhaW83NC1KYnNQc0JabkpoYm1ObFl5MWtjMjF6IiwieG1zX2lkcmVsIjoiNCA3IiwieG1zX21pcmlkIjoiL3N1YnNjcmlwdGlvbnMvYTNiZDU4MmUtODhlNC00MDAwLTk3MGUtYjNlNzY5MTRlNjI4L3Jlc291cmNlZ3JvdXBzL3Rlc3QyL3Byb3ZpZGVycy9NaWNyb3NvZnQuQ29tcHV0ZS92aXJ0dWFsTWFjaGluZXMvc3VwZXItdm0iLCJ4bXNfcmQiOiIwLjQyTGxZQkppdEJZUzRlQVVFbERwOWJWYnVlMjI3NlF2NmJveW1rMTZRRkVPSVlIR1pXeFBybnhlNFRSaDI2RU5tcDVWSHdFIiwieG1zX3N1Yl9mY3QiOiIzIDkiLCJ4bXNfdGRiciI6IkVVIn0.aUEO0eNy0qXHxTbk1fGn6OealCdBi78VsQEOUrm7lHg_pFsb_3iOljQy6kuDxZM1DX6LXPVy7sh4p9mGlRQNdkYelDucj-clRXgo2hU5oDFoG1oiBkda8eMZeMUuJ-sTjMVPjRGpfCkRknlbdMCairssMHDI25mAVJ1pp3X_PQp42UTnX6e1OniOYeawYV5Hrz0dzJX_cEDwYqofB2dHIi9xofr5UGv1xMpYeVr_I9evHJV5_bBlLGVpi0gCQU56JksGcotdXmzaSe1cd52WWfqwgWK1HtUt2oILqNpmYleyTs9iAZIAwsHGMEqYOs2uuTT8RoGC3gQZ-RQOcsPHgQ","client_id":"b1f4952f-567e-4d06-b930-455b348f3aa4","expires_in":"86400","expires_on":"1765754714","ext_expires_in":"86399","not_before":"1765668014","resource":"https://storage.azure.com/","token_type":"Bearer"}jjk@super-vm:~/azcopy_linux_amd64_10.31.0$  
````  




L’adresse 169.254.169.254 est joignable car la table de routage de la VM contient une route link-local qui envoie ce trafic directement vers l’interface réseau, où il est intercepté par l’hyperviseur Azure pour fournir le service IMDS.

