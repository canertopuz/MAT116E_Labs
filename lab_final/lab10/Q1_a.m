%Caner Topuz
%090200358
%Lab_10-Q1.a
clear;
clc;
close all;

syms x y;
A = [0 1 3; 2 x 4; y 1 7];
eq = det(A) == 0;
i=-5:0.1:1;
n = length(i);
y = zeros(n,1);

for j=1:n
    eq2 = subs(eq,x,i(j));
    y(j) = solve(eq2);
end

plot(-5:0.1:1,y,'r*');