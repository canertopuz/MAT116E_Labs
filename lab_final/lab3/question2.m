% Caner Topuz
% 090200358
% Lab-3 Question 2

clear;
clc;

a = 3;
b = 2.2;
k = 0.5;

t = linspace(-2*pi,2*pi,200);

x = 4*a*((1-3*t.^2) ./ ((1+t.^2).^3));
y = 4*a*((t.*(3 - t.^2)) ./ (1 + t.^2).^3);

x1 = b*(t.*cos(t) + k*t);
y1 = b*t.*sin(t);

plot(x,y,'r');
hold on;
plot(x1,y1,'g');
legend("Cayley's Curve",'Doppler Spiral');
title('Cayley,s Curve and Doppler Spiral');
xlabel('x axis');
ylabel('y axis');
