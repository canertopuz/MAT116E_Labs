clear
close all
clc

sum = 0;
n = 0;
x = 4;
while n<100
    sum = sum + ((-1)^n / 2^(n+1) - 1)*x^n;
    n = n+1;
end