clear all; close all; clc;
A=imread('noise_image2.jpg'); 
sigma = 0.4;
alpha = 0.5;
B = locallapfilt(A, sigma, alpha);
imshowpair(A, B, 'montage');
imwrite(B,'noise_image2.jpg');