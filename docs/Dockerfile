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

# Training

# Horse to Zebra
#RUN bash ./datasets/download_cyclegan_dataset.sh horse2zebra
#CMD ["python3", "./train.py", "--dataroot", "./datasets/horse2zebra", "--name", "horse2zebra_cyclegan", "--model", "cycle_gan", "--cycle_loss_func", "ssim", "--display_id", "0"] 


#Manually
#python3 ./train.py --dataroot ./datasets/horse2zebra --name horse2zebra_cyclegan --model cycle_gan --cycle_loss_func ssim --continue_train --epoch_count 58 --display_id 0

#sudo docker run --gpus all -v results:/workspace/pytorch-CycleGAN-and-pix2pix/checkpoints cyclegan

# Monet paintings
RUN bash ./datasets/download_cyclegan_dataset.sh monet2photo
CMD ["python3", "./train.py", "--dataroot", "./datasets/monet2photo", "--name", "monet2photo_cyclegan", "--model", "cycle_gan", "--cycle_loss_func", "l1", "--display_id", "0"]







# Some notes:
# --display_id 0             To stop the visdom server
# --cycle_loss_func ssim     To use SSIM instead of l1 loss as Cycle Consistency loss         (, "--cycle_loss_func", "ssim")
# --continue_train           Continue training from loaded model (Checkpoints)

# Base start training:
#   python3 ./train.py --dataroot ./datasets/horse2zebra --name horse2zebra_cyclegan --model cycle_gan

#   python3 ./train.py --dataroot ./datasets/monet2photo --name monet2photo_cyclegan --model cycle_gan


# Base start test
# python3 test.py --dataroot ./datasets/horse2zebra  --name horse2zebra_cyclegan --model cycle_gan
# python3 test.py --dataroot ./datasets/monet2photo  --name monet2photo_cyclegan --model cycle_gan


# Start container agian (Starting when container allready stopped. So it can be tested)
# sudo docker run -ti --gpus all --entrypoint=sh -v results:/workspace/pytorch-CycleGAN-and-pix2pix/checkpoints cyclegan-ssim-run 
 #sudo docker run --gpus all -v results:/workspace/pytorch-CycleGAN-and-pix2pix/checkpoints  -ti --entrypoint=sh baseline_monet_image