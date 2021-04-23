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
#sudo docker build . -t cyclegan


# --mount source=myvol,target=/myapp
#sudo docker run --gpus all -v results:/workspace/pytorch-CycleGAN-and-pix2pix/checkpoints cyclegan


# Nvidia requirements. https://www.pugetsystems.com/labs/hpc/Workstation-Setup-for-Docker-with-the-New-NVIDIA-Container-Toolkit-nvidia-docker2-is-deprecated-1568/
# Step 3) Install NVIDIA Container Toolkit



# bash into container
#sudo docker exec -it suspicious_leakey /bin/bash