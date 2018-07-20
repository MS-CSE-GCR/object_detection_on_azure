### Welcome to the Linux Data Science Virtual Machine

### Requirements
**Please read carefully, and conform the criteria below.**

Your Dataset folder MUST contain a folder named **VOCdevkit**, which includes your datafoler such as *VOC2007*, *Helmet*(The specific object your want to detect). The treeview of that folder looks like this. If you are confused with it, you can refer to the [Pascal VOC](http://host.robots.ox.ac.uk/pascal/VOC/voc2007/#testdata) dataset.

├─Annotations

│  └─*.xml

├─ImageSets

│  └─Main


│  |  └─ \<classname>_train.txt,\<classname>_val.txt, tran.txt, val.txt

└─JPEGImages

│  └─*.jpg(lower case extension name)

Make sure everything is well prepared, compress the VOCdevkit folder to a zip/tar file.

### Deyploy

Choose one way below to deploy, these two ways both work.
In the web page you need input some info to deploy a VM, you can type you own password but **DO NOT** change the username.
#### 1. Novel UI

[![Deploy to Azure](http://azuredeploy.net/deploybutton.svg)](https://azuredeploy.net/)

#### 2. Traditional UI

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FIamnvincible%2Fobject_detection_on_azure%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

