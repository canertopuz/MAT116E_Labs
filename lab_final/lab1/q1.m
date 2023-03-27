clear;
clc;

x = 5.1;
y = 4.2;

a = pi^(1/4);
a = a + 2;
a = sqrt(a);

b = (1 - 2 / (5 + 3)) / (1 + 2 / (5 - 3));

c = sqrt(132);
c = c^(1/3) + log(200.4) / 45 + sind(36) + exp(cos(pi)); 

d = (x*y)^2 - (x - y) / (x + y)^2 + ((x + y) / (2 * x - y))^(1/3); 

fprintf("a= %f\nb= %f\nc= %f\nd= %f\n",a,b,c,d);