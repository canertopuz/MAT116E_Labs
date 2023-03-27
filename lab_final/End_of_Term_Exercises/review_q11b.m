% Caner Topuz
% 090200358
% Review_Q11.b
clear
close all
clc
syms x y;

%1
eq = x^2*cos(x*y);
eqInt = int(int(eq,x),y);
disp(eqInt);

%2
eq2 = abs(x)/x;
eqLim = limit(eq2,x,0,'left');
disp(eqLim);

%3
eq3 = cos(x)^2/(1+sin(x)^2);
eqInt2 = int(eq3,0,pi);
disp(deqInt2);