resim=imread('noise_image2.jpg'); 
 
sobels=resim;
 
A=double(sobels);
 
for i=1:size(A,1)-2
 
for j=1:size(A,2)-2
 
%Yatay sobel kermel matrisi
 
Gx=((2*A(i+2,j+1)+A(i+2,j)+A(i+2,j+2))-(2*A(i,j+1)+A(i,j)+A(i,j+2)));
 
%Dikey sobel kernel matrisi
 
Gy=((2*A(i+1,j+2)+A(i,j+2)+A(i+2,j+2))-(2*A(i+1,j)+A(i,j)+A(i+2,j)));
 
sobels(i,j)=sqrt(Gx.^2+Gy.^2);
 
end
 
end
 
figure;imshow(resim);
 
figure,imshow(sobels);
imwrite(sobels,'noise_image7.jpg');