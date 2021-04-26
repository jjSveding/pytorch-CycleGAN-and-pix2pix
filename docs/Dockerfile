FROM nvcr.io/nvidia/pytorch:21.03-py3
WORKDIR /workspace

RUN apt update && apt install -y wget unzip curl bzip2 git
#RUN curl -LO http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
#RUN bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda -b
#RUN rm Miniconda3-latest-Linux-x86_64.sh
#ENV PATH=/miniconda/bin:${PATH}
#RUN conda update -y conda

#RUN conda install -y pytorch torchvision -c pytorch
#RUN mkdir /workspace/ && cd /workspace/ && git clone https://github.com/jjSveding/pytorch-CycleGAN-and-pix2pix.git && cd pytorch-CycleGAN-and-pix2pix && pip install -r requirements.txt
RUN git clone https://github.com/jjSveding/pytorch-CycleGAN-and-pix2pix.git && cd pytorch-CycleGAN-and-pix2pix && pip install -r requirements.txt

#

WORKDIR /workspace/pytorch-CycleGAN-and-pix2pix

# Added commands to run training.

# Horse to Zebra
RUN bash ./datasets/download_cyclegan_dataset.sh horse2zebra
CMD ["python3", "./train.py", "--dataroot", "./datasets/horse2zebra", "--name", "horse2zebra_cyclegan", "--model", "cycle_gan", "--cycle_loss", "l1"] 
#CMD ["python3", "./train.py", "--dataroot", "./datasets/horse2zebra", "--name", "horse2zebra_cyclegan", "--model", "cycle_gan", "--lambda_A", "1000", "--lambda_B", "1000", "--lambda_identity", "1"]
#python3 ./train.py --dataroot ./datasets/horse2zebra --name horse2zebra_cyclegan --model cycle_gan --continue_train 

#sudo docker run --gpus all -v results:/workspace/pytorch-CycleGAN-and-pix2pix/checkpoints cyclegan

# Money paintings
#RUN bash ./datasets/download_cyclegan_dataset.sh monet2photo
#CMD ["python3", "./train.py", "--dataroot", "./datasets/monet2photo", "--name", "monet2photo_cyclegan", "--model", "cycle_gan", "--lambda_A", "100", "--lambda_B", "100"]