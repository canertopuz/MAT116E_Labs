%Caner Topuz
%090200358
%Lab8-Q1-a
clear;
clc;

A = [3 2 1; 4 3 1; 3 1 0];
b = [16 21.7 12.1]';

det_A = det(A);

B = A;
B(:,1) = b;
water_price = det(B) / det_A;
fprintf('Water price: %.2f$\n',water_price);

B = A;
B(:,2) = b;
tea_price = det(B) / det_A;
fprintf('Tea price: %.2f$\n',tea_price);

B = A;
B(:,3) = b;
coffee_price = det(B) / det_A;
fprintf('Coffee price: %.2f$\n',coffee_price);