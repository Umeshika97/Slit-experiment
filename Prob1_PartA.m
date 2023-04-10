close all;
clear;
clc;
thetamax=pi/8;%Angle to the furthest away point from the central maximum 
    a=12*1e-6;%Slit width in m
    l=480*1e-9;%Wavelength of the light ray in m
    s=3;%Distance in m from the slit to the screen
    theta=-thetamax:1e-5:thetamax;%the range of theta angle
    y=s*tan(theta);%y is distance between central max to  dark or bright spot and theta is very small angle, hence sin(theta)=tan(theta)
    alpha=pi*a*sin(theta)/l; %alpha=(phase angle of difference/2)
    x=((sin(alpha)./alpha).^2);%the intensity and the initial intensity at the central maximum (center of the diffraction pattern) is a unity
    plot(y,x);
    legend('12\mum slit');
    title('Single slit diffraction');
    xlabel('Distance in m');
    ylabel('Intensity');
    
    