#!/bin/bash
echo "hello"
whoami
su - msft<<!
pwd
whoami
mkdir ~/msfthack
cd ~/msfthack
echo "cloning darknet"
git clone https://github.com/Iamnvincible/darknet.git
cd darknet
echo "starting make"
make
echo "cloning retinanet"
cd .. 
git clone https://github.com/fizyr/keras-retinanet.git
cd keras-retinanet 
pip install . --user
cd ~
mkdir .jupyter
cd .jupyter
wget https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/jupyter_notebook_config.py
cd ~/msfthack
wget https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Yolo.ipynb
wget https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Yolo_EN.ipynb
wget https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Retinanet.ipynb
wget https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Retinanet_EN.ipynb
mkdir ~/msfthack/Image
echo "starting jupyter notebook on port 9999"
jupyter notebook >jupyter.log 2>&1 &
echo "done"
whoami
pwd
exit
!
whoami
echo "byebye"