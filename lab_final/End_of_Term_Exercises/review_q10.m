% Caner Topuz
% 090200358
% Review_Q10
clear
close all
clc

h_x = [-2 45];
V = conv([1 0],[1 15]);
V = conv(V,h_x);

x = 0:0.01:22.5;
volume = polyval(V,x);
plot(x,volume);

Vder = polyder(V);
r = roots(Vder);
indx = find(r>=0 & r<=22.5);
xmax = r(indx);
max = polyval(V,xmax);
fprintf('Maximum Volume: %f\nx: %f\th: %f\n',max,xmax,polyval(h_x,xmax));