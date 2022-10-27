# Introducción 📖
Se propone realizar un programa que pueda realizar pruebas utilizando la ecualización del histograma en diferentes imágenes para resaltar algún objeto

## ¿Qué es el procesamiento digital de imagenes (PDI)? 🤷‍♂️🤷‍
PDI se puede definir como el conjunto de procesamientos que se realizan sobre una imagen digital ya sea para realizar su almacenamiento, transmisión o tratamiento.

## Lectura de imágenes en matlab 👓
Para leer una imágen en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imread.html"> **imread**</a> y se asigna a una variable que representara a la imágen.

<h5 align="center"><code>imagen = imread('ruta/nombre de la imágen.extensión');</code></h5>

## ECUALIZACIÓN DEL HISTOGRAMA 👨‍💻
Es una transformación que tiende a lograr una aproximación a una distibución uniforme de los valores de la escala de los niveles de gris.

Es decir la ecualización del histograma **pretende darle la misma probabilidad de ocurrencia a todos los niveles de gris**.

La ecualización del histograma tiene una ventaja a su favor, la cual viene dada por el hecho de que la ímagen resultante después de la transformación, implícitamente tiene **máxima entropía**.

* Nota: Una imagen con máxima entropía es aquella que tiene **mayor homogeneidad** y en algunas ocaciones **mayor contraste**

Para lograr esto se hace uso de la función <a href="https://la.mathworks.com/help/images/ref/histeq.html?searchHighlight=histeq&s_tid=srchtitle_histeq_1">**histeq**</a>

<h5 align="center"><code>imesculizada=histeq(im,hiv)</code></h5>

Donde:
* im, es la imagen
* hiv, es el número de niveles de intensidad para la imagen de salida
* imesculizada, es la imagen de salida con el histograma ecualizado

<a href="https://github.com/ArturoEmmanuelToledoAguado/Ecu-Histograma">Código</a>