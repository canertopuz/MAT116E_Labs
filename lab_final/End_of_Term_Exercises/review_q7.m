% Caner Topuz
% 090200358
% Review_Q7
clear
close all
clc

A = [1 -1/3 -1/3 0; -1/2 1 0 -1/2; -1/2 0 1 -1/2; 0 -1/3 -1/3 1];
b = [50 0 0 20/3]';

T1 = A;
T1(:,1) = b;
T1 = det(T1)/det(A);

T2 = A;
T2(:,2) = b;
T2 = det(T2)/det(A);

T3 = A;
T3(:,3) = b;
T3 = det(T3)/det(A);

T4 = A;
T4(:,4) = b;
T4 = det(T4)/det(A);

fprintf('T1: %f\nT2: %f\nT3: %f\nT4: %f\n',T1,T2,T3,T4);