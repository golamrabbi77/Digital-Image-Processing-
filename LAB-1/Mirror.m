clc;
clear all;
close all;

a = imread('child_image.jpg');
b =rgb2gray(a);
[r,c]=size(b);

for i=1:1:r
    k=1;
    for j=c:-1:1
        result(i,k)=b(i,j);
        k=k+1;
    end
end   

subplot(1,2,1),imshow(b);
subplot(1,2,2),imshow(result);
