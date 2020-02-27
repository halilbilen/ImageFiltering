clear all; close all; clc;
I = imread('noise_image2.jpg');
%I = imcrop(I,[2 50 255 255]);
imshow(I);
title('Original Image');
PSF = fspecial('gaussian',5,5);
%blurred = imfilter(I,PSF,'symmetric','conv');   
%V = 0.002;
%blurred_noisy = imnoise(blurred,'gaussian',0,V);
%imshow(blurred_noisy);
%title('Blurred and Noisy Image');
luc1 = deconvlucy(I,PSF,5);
imshow(luc1);
title('Restored Image');
imwrite(luc1,'noise_image5.jpg');

%%%%


