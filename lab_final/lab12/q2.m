%Caner Topuz
%090200358
%Lab_12-Q2
clear;
close all;
clc;

hw1 = [13.5 13 14.5 13 18.5 19.5 16.5 12 18.5 16];
hw2 = [17.75 8 15.25 14.5 17.25 14.5 12.75 15.25 15.75 15.75];
final = [80.6 66.3 54.3 76.5 86 77.6 84.1 81.4 81.9 91.2];
n = length(hw1);

A = [n sum(hw1) sum(hw2); sum(hw1) sum(hw1.*hw1) sum(hw1.*hw2); sum(hw2) sum(hw1.*hw2) sum(hw2.*hw2)];
b = [sum(final); sum(hw1.*final); sum(hw2.*final)];
x = A\b;

fprintf('final= %.2f + %.2f*hw1 + %.2fhw2\n',x(1),x(2),x(3));
fprintf('Final grade for a student who gets a 17 and a 16.75 on the first two assignments is %.3f\n',x(1) + x(2)*17 + x(3)*16.75);
x2d = linspace(12,19.5,20);
y2d = linspace(8,17.75,20);
f2d = x(1) + x(2)*x2d + x(3)*y2d;
plot3(x2d,y2d,f2d);
hold on;
plot3(hw1,hw2,final,'*k');