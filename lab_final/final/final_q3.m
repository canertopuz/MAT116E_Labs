%090200358
%Final_Q2
clear;
close all;
clc;

x = 1:6;
y = [100 150 175 190 260 300];
n = length(x);

x2 = x;
y2 = log(y);

Sx = sum(x2);
Sy = sum(y2);
Sxx = sum(x.^2);
Syy = sum(y.^2);
Sxy = sum(x2.*y2);

m = (n*Sxy - Sy*Sx) / (n*Sxx - Sx*Sx);
b = (Sxx*Sy - Sxy*Sx) / (n*Sxx - Sx*Sx);

bFunc = exp(m);
aFunc = exp(b);
fprintf('Fitted function= y= %.2f * %.2f^x\n',aFunc,bFunc);
yi = aFunc*bFunc^4.5;
fprintf('Function value at x= 4.5 is %f\n',yi);

t = 1:0.1:6;
result = aFunc*bFunc.^t;
plot(x,y,'r*',t,result,'b');
title('Linear Aprx.')
xlabel('x');
ylabel('y');
