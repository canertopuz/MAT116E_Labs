%Caner Topuz
%090200358
%Lab5_q1

clear;
clc;
%-Initialization 
t1 = 0;
d1 = inf;
i = 1;
%-Finding first t when d<15 to determine the size of arrays(t and d)
while d1 > 15
    x = 5*t1 - 10;
    y = 25*t1^2 - 120*t1 + 144;
    d1 = sqrt(x^2 + y^2);
    t1 = t1 + 0.01;
end
%-Array initialization
t = 0:0.01:(t1-0.01);
d = zeros(1,length(t));
%Array assignment
d1 = inf;
while d1 > 15
    x = 5*t(i) - 10;
    y = 25*t(i)^2 - 120*t(i) + 144;
    d1 = sqrt(x^2 + y^2);
    d(i) = d1;
    i = i+1;
end
%-Printing results and plotting.
fprintf('// t:%.2f, the first time when the distance from the origin is less than 15 meters.\n',t(end));

plot(t,d,'b-.');
xlabel('Time');
ylabel('Distance');
title('The distance of the object from the origin');
