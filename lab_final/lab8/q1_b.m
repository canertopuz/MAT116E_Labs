%Caner Topuz
%090200358
%Lab8-Q1-b
clear;
clc;

A = [(-2.6)^3 (-2.6)^2 (-2.6) 1; (0.5)^3 (0.5)^2 (0.5) 1; (1.5)^3 (1.5)^2 (1.5) 1; (3.5)^3 (3.5)^2 (3.5) 1];
b = [68 5.7 4.9 88]';

aug = zeros(4,8);
aug(:,1:4) = A;
aug(:,5:8) = diag(ones(1,4));

rref_aug = rref(aug);
inv_A = rref_aug(:,5:8);

x = inv_A * b;
x_c = ['a' 'b' 'c' 'd'];

for i = 1:4
fprintf('%c= %f\n',x_c(i),x(i));
end