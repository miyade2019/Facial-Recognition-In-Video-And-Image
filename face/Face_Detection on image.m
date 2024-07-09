img = imread('hakim ziyech.jpg');

[width,height] = size(img);

if width > 320
    img = imresize(img ,[320 NaN]);
end
face_Detector = vision.CascadeObjectDetector();
yuz_kare = step(face_Detector, img);
kare = insertShape(img, 'Rectangle', yuz_kare);
figure;

imshow(kare);
title('Detectd_face');