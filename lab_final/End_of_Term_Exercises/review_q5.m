% Caner Topuz
% 090200358
% Review_Q5
clear
close all
clc

t = linspace(-2*pi,2*pi,1000);
x1 = cos(t).^3;
y1 = sin(t).^3;

x2 = cos(t).*(8 + 5*cos(2*t) + 3*cos(6*t)) ./ (13 + 3*cos(4*t));
y2 = (4*sin(t).^3) .* (7 + 6*cos(2*t) + 3*cos(4*t)) ./ (13 + 3*cos(4*t));

plot(x1,y1,x2,y2);
title('Astroid and Catacaustic of the astroid');
xlabel('x');
ylabel('y');
legend('Astroid','Catacaustic of the astroid');