# Object Detection with Tiny YOLO package + R

# install.packages("remotes")
# remotes::install_github("bnosac/image", subdir = "image.darknet")
install.packages("imager")

library(image.darknet)
library(imager)

yolo_tiny_voc <- image_darknet_model(type = "detect", 
                                     model= "tiny-yolo-voc.cfg", 
                                     weights = system.file(package="image.darknet", "models","tiny-yolo-voc.weights"), 
                                     labels = system.file(package="image.darknet", "include", "darknet", "data", "voc.names"))
x <- image_darknet_detect(file = "c:/r/source.jpg", object = yolo_tiny_voc, threshold = 0.15)

fpath<-load.image("c:/r/predictions.png")
plot(fpath)
