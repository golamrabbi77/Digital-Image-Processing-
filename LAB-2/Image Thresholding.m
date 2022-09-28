clc;
clear all;
close all;

a = imread('cameraman.tif');

[r,c]=size(a);

T = input('Enter the threshold parameter value = ');

for i =1:r
    for j=1:c
        if a(i,j)<T
            d(i,j) = 255;
        else
            d(i,j) =0;
        end
    end
end

subplot(1,2,1), imshow(a);
subplot(1,2,2), imshow(d);
