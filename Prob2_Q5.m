close all;
clear;
clc;
A=imread('single_slit.bmp');
A = rgb2gray(A);
F = fft2(A);%Get Fourier Transform of an image
Fsh = fftshift(F);%get the centered spectrum
figure(1);
B=abs(Fsh);
imshow(B,[]);
title('Centered fourier transform of far field diffraction pattern for the single slit')
