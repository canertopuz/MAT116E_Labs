% Caner Topuz
% 090200358
% Review_Q12
clear
close all
clc

x = -2:2;
y = [1.5 3.2 4.5 3.4 2];
n = length(x);

% POLYFIT VERSION
% res = polyfit(x.^2,1./y,1);
% a = 1./res(1);
% b = a*res(2);
% t = -2:0.1:2;
% y2 = a./(t.^2+b);
% plot(x,y,'*',t,y2);
% figure;

x2 = x.^2;
y2 = 1./y;

Sx = sum(x2);
Sy = sum(y2);
Sxx = sum(x2.^2);
Syy = sum(y2.^2);
Sxy = sum(x2.*y2);

% y = mx + b;
m = (n*Sxy - Sy*Sx) / (n*Sxx - Sx*Sx);
b = (Sxx*Sy - Sxy*Sx) / (n*Sxx - Sx*Sx);

aEq = 1/m;
bEq = b/m;
t = -2:0.01:2;
res = aEq./(t.^2 + bEq);

plot(t,res);
hold on;
plot(x,y,'*');

yMean = mean(y);
yCal = aEq./(x.^2 + bEq);

SSE = 0;
for i=1:n
    SSE = SSE + (y(i) - yCal(i))^2;
end

SST = 0;
for i=1:n
    SST = SST + (y(i) - yMean)^2;
end

Rsquare = 1 - SSE/SST;
fprintf('R = %.2f\n',Rsquare);