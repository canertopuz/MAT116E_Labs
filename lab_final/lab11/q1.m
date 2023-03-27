%Caner Topuz
%090200358
%Lab_11-Q1
clear;
close all;
clc;

t =1:2:13;
h = [22, 51, 127, 202, 227, 248, 252];

y = 254./h -1;
p = polyfit(t,log(y),1);
A = exp(p(2));
B = -p(1);
fprintf('A= %f B= %f\n',A,B);

xr = 1:0.1:13;
yr = 254./(1+A*exp(-B*xr));
plot(xr,yr,'--r',t,h,'db');