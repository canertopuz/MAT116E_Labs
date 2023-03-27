%Caner Topuz
%090200358
%Lab_11-Q2
clear;
close all;
clc;

x = 0:1:5;
x_new = 0:0.1:5;
y = [1, -0.6242, -1.4707, 3.206, -0.7366, -6.3717];

y_norm = 1.5.^x_new .* cos(2*x_new);

y_lin = interp1(x,y,x_new);
y_spline = interp1(x,y,x_new,"spline");
y_pchip = interp1(x,y,x_new,"pchip");

plot(x,y,'dk',x_new,y_norm,'r',x_new,y_lin,'g',x_new,y_spline,'b',x_new,y_pchip,'m');
legend('Data points','Original function','Linear intrp','Cubic spline interp','Cubic interp');