close all;
clear;
clc;
A=imread('single_slit.bmp')
%imshow(A)
%imcontrast();
figure(1);
imhist(A);
grid on;
title('The graph of spectral information from a single slit');

