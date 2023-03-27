%Caner Topuz
%090200358
%Lab_10-Q2.b
clear;
clc;
close all;

syms y x k;
y = -k*x^2 + 12*k*x;
area = 12*15/2;
f = int(y,0,12);
res = solve(f==area);

fprintf('k=%f\n',double(res));