%Caner Topuz
%090200358
%Final_Q1
clear;
close all;
clc;

x = -5:0.01:5;
mean = [0 0 0 -2];
variance = [0.2 1 5 0.5];
stndrt_deviation = sqrt(variance);
n = length(mean);
n2 = length(x);
result = zeros(n2,n);
labels = {'mean= 0 variance= 0.2','mean= 0 variance= 1','mean= 0 variance= 5.0','mean= -2 variance= 0.5'};
hold on;

for i=1:n
    for j=1:n2
    result(j,i) = 1/(stndrt_deviation(i)*sqrt(2*pi)) * exp( -(x(j)-mean(i))^2 / (2*variance(i)));
    end
    plot(x,result);
end
legend(labels);
