% Caner Topuz
% 090200358
% Review_Q2
clear
close all
clc
err = inf;
sum = 0;
n = 0;

x = input('Enter the x:\nBetween(-1,1)\n');
errBound = input('Enter the relative error\nBetween(0,1)\n');

apprxVal = review_q2_function(x,errBound);
fprintf('Result is: %f\n',apprxVal);