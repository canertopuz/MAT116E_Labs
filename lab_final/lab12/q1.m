%Caner Topuz
%090200358
%Lab_12-Q1
clear;
close all;
clc;

x = [1 2 4 5 6 8];
y = [1 3 6 8 14 16];
y = log(y);
n = length(x);

Sx = sum(x);
Sy = sum(y);
Sxx = sum(x.^2);
Syy = sum(y.^2);
Sxy = sum(x.*y);

B = (n*Sxy-Sx*Sy)/(n*Sxx-Sx*Sx);% y = A + Bx
A = (Sy*Sxx-Sx*Sxy)/(n*Sxx-Sx*Sx);
a = exp(A);% A = ln(a)
b = exp(B);% B = ln(b)
x1 = 1:0.1:8;
y1 = a*b.^x1;

plot(x,exp(y),'k*');
hold on;
plot(x1,y1);
fprintf('Value of y at x=3 is equal to %.3f\n',a*b^3);