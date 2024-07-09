[file,path] = uigetfile('**','Select an image');
loc=strcat(path,file);
pic=imread(loc);
graypic=rgb2gray(pic);


detectorFace=vision.CascadeObjectDetector();
detectorFace.MergeThreshold=10;%her şey çıkıyor
boundingbox =step(detectorFace,graypic);
detpic=insertObjectAnnotation(pic,'rectangle',boundingbox,'Face');
imshow(detpic);

%%
detectorFace=vision.CascadeObjectDetector('RightEye');
detectorFace.MergeThreshold=100;% sadece burun çünü 100-110
boundingbox =step(detectorFace,graypic);
detpic=insertObjectAnnotation(pic,'rectangle',boundingbox,'Eye');
imshow(detpic);
%%
detectorFace=vision.CascadeObjectDetector('Nose');
detectorFace.MergeThreshold=100;% sadece burun çünü 100-110
boundingbox =step(detectorFace,graypic);
detpic=insertObjectAnnotation(pic,'rectangle',boundingbox,'Nose');
imshow(detpic);