function [aprx_val,n] = review_q2_function(x,err)
erR = ones(1);
sum = 0;
n = 0;
real = 3/(x^2+x-2);

while  erR > err
sum = sum + ((-1)^(n+1) / (2^(n+1))-1)*x^n;
n = n + 1;
erR(n) = abs(sum-real)/abs(real);
end

plot(1:n,erR);
aprx_val = sum;
end