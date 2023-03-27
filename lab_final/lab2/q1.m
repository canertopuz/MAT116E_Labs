% Caner Topuz 090200358
clear;
clc;

n = input("Enter the length of the vector.");
t = 2 + rand(n,1);

display(t);

a = exp(t).*(1+sin(2*t))
b = cos(t).^3 + sin(t).^3
c = (sec(t).^2) ./ csc(t) + 2
d = log10(2+t+t.^3)

