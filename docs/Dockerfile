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
#RUN cd pytorch-CycleGAN-and-pix2pix
RUN bash ./pytorch-CycleGAN-and-pix2pix/datasets/download_cyclegan_dataset.sh horse2zebra
CMD ["python3", "./pytorch-CycleGAN-and-pix2pix/train.py", "--dataroot", "./pytorch-CycleGAN-and-pix2pix/datasets/horse2zebra", "--name", "horse2zebra_cyclegan", "--model", "cycle_gan"]


