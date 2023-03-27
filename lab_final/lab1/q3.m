clear;
clc;

b1 = 180;
b2 = 165;
c1 = 115;
A1 = 120;
A2 = 100;

a = b1^2 + c1^2 - 2*b1*c1*cosd(A1);
a = sqrt(a);

B2 = b2 * sind(A2) / a;
C2 = 180 - (asind(B2) + A2);

c2 = b2^2 + a^2 - (2 * b2 * a * cosd(C2));
c2 = sqrt(c2);

fprintf("a = %f \nC2 = %f \nc2 = %f \n",a,C2,c2);