%Caner Topuz
%090200358
%Lab_10-Q2.a
clear;
clc;
close all;

syms x h;
f1 = sin(cos(x));

res1 = diff(f1);
f2 = subs(f1,x+h);
res2 = limit((f2 - f1)/h,h,0);
if isAlways(res1 == res2) == 1
    fprintf('Res1 and Res2 is equal\n');
else
    fprintf('Res1 and Res2 is not equal\n');
end