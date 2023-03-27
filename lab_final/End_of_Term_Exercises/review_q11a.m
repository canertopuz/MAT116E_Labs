% Caner Topuz
% 090200358
% Review_Q11.a
clear
close all
clc

syms x y;

ellps1 = (x-1)^2/6^2 + y^2/3^2 == 1;
ellps2 = (x+2)^2/2^2 + (y-5)^2/4^2 == 1;

ezplot(ellps1,[-6 10]);
hold on;
ezplot(ellps2,[-6 10]);