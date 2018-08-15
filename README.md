# Friendly object detection 

This project aims to simplify objection detection.
You can do all your work in a Jupyter Notebook rather than in command line. You can choose Yolo or Retinanet or both to train you model.

This is the tutorial [video](https://cloudmateriallsj.blob.core.windows.net/video/Object_detection_tutorial.mp4) in Chinese for your reference.
### Requirements
**Please read carefully, and conform the criteria below.**

Your Dataset folder MUST contain a folder named **VOCdevkit**, which includes your datafoler such as *VOC2007*, *Helmet*(The specific object your want to detect). The treeview of that folder looks like this. If you are confused with it, you can refer to the [Pascal VOC](http://host.robots.ox.ac.uk/pascal/VOC/voc2007/#testdata) dataset.

├─Annotations

│  └─*.xml

├─ImageSets

│  └─Main 


│  |  └─ \<classname>_train.txt,\<classname>_val.txt, train.txt, val.txt

└─JPEGImages

│  └─*.jpg(lower case extension name. **MUST** be end with **jpg** rather than **jpeg**)

If you don't hava train.txt and val.txt in Main folder, copy `Gentxt.py` to your dataset's `ImageSets` folder, and run that script, then you will get these text files.

eg. If I want to train one object detection on helmet, my file tree can be like this image.

![](https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Image/tree.png)

Make sure everything is well prepared, compress the VOCdevkit folder to a zip/tar file.

### Deployment

Choose one way below to deploy, these two ways both work.
In the web page you need input some info to deploy a VM, you can type you own password but **DO NOT** change the username.
#### 1. Novel UI

[![Deploy to Azure](http://azuredeploy.net/deploybutton.svg)](https://azuredeploy.net/)

#### 2. Traditional UI

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FIamnvincible%2Fobject_detection_on_azure%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

eg. If you click the first button to deploy, just fill in the Visual Machine Name and Admin Password cells. If you want use your existing resource group, check the selection box below in the yellow rectangle.

note. In some resource group or vm location, you may not access the url in the following step, because the custom script failed. If it happends, try eastus2.

![](https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Image/Create.png)
### Development
After deployment, you can get an ip address in Azure Portal, open the url `http://<ip>:9999` in your browser. Login with password `msfthack` and you will see Yolo and Retinanet notebooks, choose one to open and follow the steps.
And if you stop/restart the vm, next time you should login it through SSH, and run `jupyter notebook` in command line, when it's ready, visit the 9999 port.

In the webpage you will see:

![](https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Image/Notebook.png)

You should upload your dateset file in the Image folder, in the picture I uploaded two datesets. If you unzip the datasests, you will see the VOCdevkit folder.

![](https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Image/ImageFolder.png)

In the VOCdevkit folder, you can see all your datasets' folder.

![](https://raw.githubusercontent.com/MS-CSE-GCR/object_detection_on_azure/master/Image/datasets.png)
