% Caner Topuz
% 090200358
% Lab-3 Question 1

clear;
clc;

t = (1790:10:2000);
p = 1972730000 ./ (1 + exp(-0.03134 .* (t - 1913.25)));

plot(t,p);
axis([1790 2000 p(1) p(end)]);
xlabel('Time');
ylabel('Population');
title('Population of the United States')