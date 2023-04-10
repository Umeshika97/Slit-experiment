% ********* Double Slit Interference and Diffraction combined ***********
clear
clc
thetamax=pi/50;
    a=30*1e-6;
    d=0.15*1e-3;
    l=480*1e-9;
    s=0.3;%input('Enter slit to screen distance (in m): ');
    theta=-thetamax:1e-5:thetamax;
    y=s*tan(theta);
    alpha=pi*a*sin(theta)/l;
    beta=pi*d*sin(theta)/l;
    x1=cos(beta).^2;            % Interference term
    x2=(sin(alpha)./alpha).^2;  % Diffraction term
    x=x1.*x2;                   % Combined effect
    plot(y,x,'b',y,x2,'--r');
    legend('x','x2');
    title('Double slit diffraction');
    xlabel('Distance in m');
    ylabel('Intensity');


