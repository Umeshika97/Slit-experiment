close all;
clear;
clc;
A=imread('single_slit.bmp');
figure(1); 
imshow(A);
title('Single slit original image'); 


A = rgb2gray(A);
figure(2); 
imshow(A); 
title('Single slit gray image'); 


F = fft2(A);%Get Fourier Transform of an image
S = abs(F);
figure(3);
imshow(S,[]);
title('Fourier transform of the single slit');

W=log(abs(F)); % here log function is used to get more clear image
figure(4);
imshow(W,[]);
title('log - FFT'); 