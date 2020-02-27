clear all; close all; clc;
A=imread('noise_image2.jpg'); 
B = im2double(A);
[m, n] = size(A);
MedArray = [];
for i=2:m-1
    for j=2:n-1
            MedArray(1) = B(i-1,j-1);
            MedArray(2) =B(i-1,j) ;
            MedArray(3) = B(i-1,j+1);
            MedArray(4) = B(i,j-1);
            MedArray(5) = B(i,j+1);
            MedArray(6) = B(i+1, j-1);
            MedArray(7) = B(i+1,j);
            MedArray(8) = B(i+1,j+1);
            B(i,j) = median(MedArray);
    end
end 
figure;
subplot(1,2,1);imshow(A);title('Noise-Image2');
subplot(1,2,2);imshow(B);title('Median Filter');
imwrite(B,'C:\Users\Halil\Desktop\c4.jpg');
