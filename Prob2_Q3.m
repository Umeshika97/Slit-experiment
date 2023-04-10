close all;
clear;
clc;
A=imread('single_slit.bmp');
figure, imshow(A);
% Extract the individual red, green, and blue color channels.
redChannel = A(:,:,1);
greenChannel = A(:,:,2);
blueChannel = A(:,:,3);

a = zeros(size(redChannel));

Red = cat(3, redChannel, a, a);
figure, imshow(Red)

Green = cat(3, a, greenChannel, a);
figure, imshow(Green)

Blue = cat(3, a, a, blueChannel);
figure, imshow(Blue)
