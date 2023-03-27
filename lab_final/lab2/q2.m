% Caner Topuz 090200358
clear;
clc;

x = linspace(1,3,300);
y = (sin(x).*cos(pi*x)) ./ ((x.^3 + 1).*(x+1));

display(y);

x2 = (2:0.15:4);
y2 = (x2.^2) ./ (x2-(1 ./ (x2.^2)));

display(y2);