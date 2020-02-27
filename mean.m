clear all; close all; clc;
I = imread('noise_image2.jpg');
i=im2double(I);
f=ones(3,3)/9;
img1=filter2(f,i);
imshow(img1);