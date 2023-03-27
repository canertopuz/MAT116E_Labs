% Caner Topuz
% 090200358
% Lab 4 Question 1
clear;
clc;

x = linspace(-2,4,100);
y = linspace(-3,5,100);

[x2d, y2d] = meshgrid(x,y);

z = x2d.^2 + x2d.*y2d + y2d.^3 - 2;

surf(x2d,y2d,z);
shading interp;

hold on;
z2 = 3*x2d + 4*y2d - 6;
surf(x2d,y2d,z2);
shading interp;

hold on;
t = linspace(-2,2,100);
x3 = 1 - 3.*t;
y3 = 1 - 4.*t;
z3 = 1 + t;
plot3(x3,y3,z3);

hold off;