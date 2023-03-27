%Caner Topuz
%090200358
%Lab9_Q2
clear;
close all;
clc;

t = 273:5:298;
P = [4.579 6.543 9.209 12.788 17.535 23.756];

p1 = polyfit(t,P,2);
p2 = polyfit(t,log(P),1);

m = p2(1);
b = exp(p2(2));

p3 = b*exp(m*t);
mape = zeros(1,2);

for i = 1:length(t)
    mape(1) = mape(1) + abs(P(i) - polyval(p1,t(i))) / abs(P(i));
end
mape(1) = 100/length(t) * mape(1);

for i = 1:length(t)
    mape(2) = mape(2) + abs(P(i) - p3(i)) / abs(P(i));
end
mape(2) = 100/length(t) * mape(2);

[~,best]  = min(mape);

if best==1
    fprintf('Second order polynomial, T = 300◦K P = %f',polyval(p1,300));
else
    fprintf('Exponential, T = 300◦K P = %f\n',b*exp(m*300));
end