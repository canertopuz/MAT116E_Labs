%Caner Topuz
%090200358
%Lab_10-Q1.b
clear;
clc;
close all;

syms x y;
y = 3/2*(x-3)^2 + 1;
ezplot(y,[0,6,0,7]);

f = 4 - y;
roots = solve(4==y);
area = int(f,roots(1),roots(2));

fprintf('The area between parabola and y=4\n>>%f\n',double(area));