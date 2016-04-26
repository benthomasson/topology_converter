#!/bin/bash

#This file is transferred to a Debian/Ubuntu Host and executed to re-map interfaces
#Extra config COULD be added here but I would recommend against that to keep this file standard.
echo "#################################"
echo "  Running 1st_device_config.sh"
echo "#################################"

sudo su

#Replace existing network interfaces file
echo -e "auto lo" > /etc/network/interfaces
echo -e "iface lo inet loopback\n\n" >> /etc/network/interfaces
echo -e  "source /etc/network/interfaces.d/*.cfg\n" >> /etc/network/interfaces

#Add vagrant interface
echo -e "\n\nauto vagrant" >> /etc/network/interfaces.d/vagrant.cfg
echo -e "iface vagrant inet dhcp\n\n" >> /etc/network/interfaces.d/vagrant.cfg

####### Custom Stuff




echo "#################################"
echo "   Finished"
echo "#################################"



