clc;
clear all;
close all;

a = imread('cameraman.tif');
a1 =im2double(a);
x =a1;

[r,c]=size(a1);

factor =3;
for i =1:r
    for j=1:c
        x(i,j)=factor*(a1(i,j))^2;
    end
end
subplot(1,2,1),imshow(a),title('Orginal Image');
subplot(1,2,2),imshow(x),title('Power-law Image');
