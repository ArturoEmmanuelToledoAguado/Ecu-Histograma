clc;
clear all;
close all;

%Abrir la imagen
img=imread('IMG\1.jpg');

%Ecualizacion de la imagen
imgec=histeq(img,10);%Número de niveles discretos de gris

%Mostramos la imagen
figure()
imshowpair(img,imgec,'montage')

figure()
subplot(1,2,1)
imhist(img)
title('Histograma original')
subplot(1,2,2)
imhist(imgec)
title('Histograma Ecualizado')