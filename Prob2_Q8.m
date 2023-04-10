close all;
clear;
clc;
%%%%%%%%step01%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A=imread('double_slit.bmp')
figure(1);
imshow(A);
title('The double slit');
%%%%%%%%step 02%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2);
imhist(A);
grid on;
title('The graph of spectral information from the double slit');
%%%%%%%%%%step 03%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Extract the individual red, green, and blue color channels.
redChannel = A(:,:,1);
greenChannel = A(:,:,2);
blueChannel = A(:,:,3);
a = zeros(size(redChannel));

Red = cat(3, redChannel, a, a);
figure(3);
imshow(Red)

Green = cat(3, a, greenChannel, a);
figure(4);
imshow(Green)

Blue = cat(3, a, a, blueChannel);
figure(5);
imshow(Blue)

%%%%%%%%%%%step 04%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = rgb2gray(A);
figure(6); 
imshow(A); 
title('Double slit gray image'); 


F = fft2(A);%Get Fourier Transform of an image
S = abs(F);
figure(7);
imshow(S,[]);
title('Fourier transform of the double slit');

W=log(abs(F)); % here log function is used to get more clear image
figure(8);
imshow(W,[]);
title('log - FFT'); 
%%%%%%%%%%%step 05%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Fsh = fftshift(F);%get the centered spectrum
figure(9);
B=abs(Fsh);
figure(9);
imshow(B,[]);
title('Centered fourier transform of far field diffraction pattern for the double slit')

%%%%%%%%step 06%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%apply improfile 
% Because  horizontal cross section of the line where the intensity pattern can be observed
figure(10);
grid on;
imagesc(B),colorbar
improfile %the transform is plot in a 1D plot.
grid on;
title('The graph of Centered fourier transformation of far field diffraction pattern for the double slit');
xlabel('distance');
ylabel('pixel value of intensity');


