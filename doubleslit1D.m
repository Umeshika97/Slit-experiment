close all;
clear;
clc;
thetamax=pi/50;%Angle to the furthest away point from the central maximum 
    a=30*1e-6;%Slit width in m
    l=480*1e-9;%Wavelength of the light ray in m
    s=3;%Distance in m from the slit to the screen
    d=0.15*1e-3;%Distance in m between two slits 
    theta=-thetamax:1e-5:thetamax;%the range of theta angle
    y=s*tan(theta);%y is distance between central max spot to  dark or bright spot and theta is very small angle, hence sin(theta)=tan(theta)
    alpha=pi*a*sin(theta)/l; %alpha=(phase angle of difference/2)
    single_slit=((sin(alpha)./alpha).^2);%the intensity and the initial intensity at the central maximum (center of the diffraction pattern) is a unity
    beta=pi*d*sin(theta)/l; %beta=(phase angle of Interference/2)
    B=cos(beta).^2;            % Interference term
    x=B.*(single_slit);                   % Combined effect
    plot(y,x,'b',y,single_slit,'--r');
    legend('Combined effect','single slit');
    title('Double slit diffraction');
    xlabel('Distance in m');
    ylabel('Intensity');
    


