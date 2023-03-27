%Caner Topuz
%090200358
%Lab_7 Q1

function y = cosTay(x)
E = 1;
sum = 0;
n = 0;

while E > 0.000001
    old_sum = sum;
    sum = sum + (-1)^n / factorial(2*n) * x^(2*n);
    E = abs(sum - old_sum) / abs(sum);
    n = n+1;
end

y = sum;
end