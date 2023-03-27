% Caner Topuz
% 090200358
% Review_Q8
clear
close all
clc

syms k;
A = [-26 -33 -25; 31 42 k; -11 -15 -4];
q = 3;
I = eye(length(A));

eq = det(A-q*I) == 0;
result = solve(eq);

fprintf('k= %.2f\n',double(result));