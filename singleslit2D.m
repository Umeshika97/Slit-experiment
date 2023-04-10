close all;
clear;
clc;
I = imread('single_slit.bmp');

subplot(2,2,1);
imshow(I);
title('Original Image'); 

subplot(2,2,2);
F = fft2(I);
imshow(abs(F),[]);
title('FFT'); 

subplot(2,2,3);
imshow(log(abs(F)),[])
title('log - FFT'); 

F = fftshift(F);
subplot(2,2,4);
imshow(log(abs(F)),[])
title('centered - log - FFT'); 
