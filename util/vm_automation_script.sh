#!/bin/bash
# Automation script for cscloud CycleGAN js225pc
# https://raymii.org/s/tutorials/Automating_Openstack_with_Cloud_init_run_a_script_on_VMs_first_boot.html

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#sudo apt-get update
#sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt install docker.io
sudo chmod 666 /var/run/docker.sock

git clone https://github.com/jjSveding/pytorch-CycleGAN-and-pix2pix.git

#cd pytorch-CycleGAN-and-pix2pix/docs
#docker build . -t cyclegan


# --mount source=myvol,target=/myapp
#docker run -it -p 8097:8097  cyclegan -v mydata:/workspace

#nvidia-docker run -it -p 8097:8097  cyclegan


# Nvidia requirements. #https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html
#sudo apt install build-essential
#BASE_URL=https://us.download.nvidia.com/tesla
#DRIVER_VERSION=450.80.02
#curl -fSsl -O $BASE_URL/$DRIVER_VERSION/NVIDIA-Linux-x86_64-$DRIVER_VERSION.run
#sudo sh NVIDIA-Linux-x86_64-$DRIVER_VERSION.run