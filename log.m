clear all; close all; clc;
I=imread('noise_image2.jpg');
figure;
L = 256;
log_I = uint8(log(double(I)+1) .* ((L - 1)/log(L)));
exp_I = uint8((exp(double(I)) .^ (log(L) / (L-1))) - 1);
subplot(2, 2, [1 2]); imshow(I); title('Input');
subplot(2, 2, 3); imshow(log_I); title('\itlog(I)');
subplot(2, 2, 4); imshow(exp_I); title('\itexp(I)');
imwrite(log_I,'noise_image2.jpg');
