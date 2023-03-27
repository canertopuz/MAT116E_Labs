%Caner Topuz
%090200358
%Question-1

clear;
clc;
close all;

N = 50;

t = linspace(0,2*pi,N);

center = [0,0];

X = zeros(3,N);
Y = zeros(3,N);

%Sirasiyla red,magenta,black

degree = [-pi/4, pi/2, pi/6];
minor = [0.2, 0.4, 0.6];
major = [0.4, 0.8, 1.2];

for i = 1:3
    X(i,:) = center(1) + 0.5*major(i)*cos(t)*cos(degree(i)) - 0.5*minor(i)*sin(t)*sin(degree(i));
    Y(i,:) = center(2) + 0.5*major(i)*cos(t)*sin(degree(i)) + 0.5*minor(i)*sin(t)*cos(degree(i));
end

plot(X(1,:),Y(1,:),'r');
hold on;
plot(X(2,:),Y(2,:),'m');
plot(X(3,:),Y(3,:),'k');

legend('Red','Magenta','Black');