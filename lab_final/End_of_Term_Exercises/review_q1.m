% Caner Topuz
% 090200358
% Review_Q1
clear
close all
clc
err = inf;
sum = 0;
n = 0;

x = input('Enter the x for sin(x):\n');
errBound = input('Enter the error bound\n');
real = sin(x);

while  err > errBound
sum = sum + (-1)^n * x^(2*n+1) / factorial(2*n+1);
n = n + 1;
err = abs(real-sum)/abs(real);
end

fprintf('Results:\nsin(%f)= %f\nNumber of repeat: %d\nReal value:%f\nError: %e\n',x,sum,n-1,real,err);