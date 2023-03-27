%Caner Topuz
%090200358
%Lab9_Q1
clear;
close all;
clc;

p1 = [-2 40];
p2 = [-2 22];
p3 = [1 0];
A = conv(p1,p2);
V = conv(A,p3);

x = linspace(0,11,30);
y = polyval(V,x);
plot(x,y);

V2 = zeros(1,length(V));
V2(end) = 1000;
V2 = V - V2;
r = roots(V2);
for i=1:length(r)
    if r(i)>=0 && r(i)<=11
        fprintf('Volume of the box is 1000 in3, x= %f\n',r(i));
    end
end

V_der = polyder(V);
r_der = roots(V_der);
V_max = polyval(V,r_der(1));
indx = 1;
for i=2:length(r_der)
    if polyval(V,r_der(i)) > V_max
        V_max = polyval(V,r_der(i));
        indx = i;
    end
end
fprintf('Maximum value of volume is: %.2f at x= %.2f in3\n',polyval(V,r_der(indx)),r_der(indx));
