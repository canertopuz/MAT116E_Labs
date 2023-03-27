% Caner Topuz
% 090200358
% Review_Q3
clear
close all
clc

x = 2:2:10;
y = [5.3, 6.31, 7.4, 9.1, 11.65];

r = polyfit(x,1./y,1); 
A = 2./r(2);
B = r(1)*A;

t = 1:0.1:16;
t2 = A*t./(B*t.^2+2*t);
plot(t,t2,x,y,'*');

fprintf('Value of bone thickness for seven years children:%f\n',A*7/(B*7^2+2*7))