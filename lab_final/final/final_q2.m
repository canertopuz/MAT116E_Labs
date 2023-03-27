%090200358
%Final_Q2
clear;
close all;
clc;

syms a b c x;
A = [a -4 2; b 1 2; c 2 5];
eigen = [-5 3 6];
n = length(A);
I = eye(n);

eq1 = det(A-eigen(1)*I) == 0;
eq2 = det(A-eigen(2)*I) == 0;
eq3 = det(A-eigen(3)*I) == 0;
[a,b,c] = solve(eq1,eq2,eq3);

eq4 = (1+sin(x)^2) / exp(x);
Answer1 = double(int(eq4,a,c));

eq5 = abs(x) / abs(x-a);
Answer2 = double(limit(eq5,x,b,'right'));

fprintf('a= %.2f b= %.2f c= %.2f\nAnswer1= %f \nAnswer2= %f\n',double(a),double(b),double(c),Answer1,Answer2);
