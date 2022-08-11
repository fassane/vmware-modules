#!/bin/bash

###################################################################
######### Script to build kernel modules vmmon and vmnet ########## 
###################################################################

gnome-terminal -e

# you can change this according to your vmware version
wget https://github.com/mkubecek/vmware-host-modules/archive/workstation-16.2.1.tar.gz

# extract files
tar -xzf ./workstation-16.2.1.tar.gz

# access directory
cd vmware-host-modules-workstation-16.2.1/

# create compressed tar files of the modules
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only

# copy files to your usr/lib directory
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/



