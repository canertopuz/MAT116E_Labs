% Caner Topuz
% 090200358
% Review_Q8
clear
close all
clc

x = 0:1:100;
y = 0:1:100;
[x2d,y2d] = meshgrid(x,y);
z = y2d.^2./x2d;

surf(x,y,z);
shading interp;
view([45 45 10]);