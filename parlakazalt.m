clear all; close all; clc;
a = 0;
b = 1;
c = input('cikti en kucuk degeri-kontrast (0.0-1.0 arasi): ');
d = input('cikti en buyuk degeri-kontrast (0.0-1.0 arasi): ');
e = input('gama (parlaklik) degeri: ');
im=imread('noise_image2.jpg');
g2=imadjust(im,[a b],[c d],e);
imwrite(g2,'e.jpg');
figure;
subplot(1,2,1);imshow(im);title('Lena-Noisy1');
subplot(1,2,2);imshow(g2);title('Gauss');
