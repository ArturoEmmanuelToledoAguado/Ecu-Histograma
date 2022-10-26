clc;
clear all;
close all;

%Extraccion de las imagenes
ruta={'IMG/1.jpg','IMG/2.jpg','IMG/3.jpg','IMG/4.jpg'};

for k=1:4
    %Abrir la imagen
    img=imread(string(ruta(k)));

    %Interfaz para pedir los niveles discretos de gris
    prompt="Ingrese el valor del nivel discreto de gris";
    t='Valor del nivel de gris';
    dims=[1 50];
    definput={'20'};
    n=inputdlg(prompt,t,dims,definput);
    n=str2double(n);

    %Ecualizacion de la imagen
    imgec=histeq(img,n);%Número de niveles discretos de gris

    %Mostramos la imagen
    figure
    imshowpair(img,imgec,'montage')

    figure
    subplot(1,2,1)
    imhist(img)
    title('Histograma original')
    subplot(1,2,2)
    imhist(imgec)
    title('Histograma Ecualizado')
end