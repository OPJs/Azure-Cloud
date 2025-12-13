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
