% Caner Topuz
% 090200358
% Lab-3 Question 3

clear;
clc;

v0 = 40;
angle_d = 30;
g = 9.8;

%Yere carpma suresini hesapladim.
thit = 2 * (v0 / g)*sind(angle_d);

%Formullere gore hesaplamalari yaptim.
t = linspace(0,thit,500);
h = v0 * t * sind(angle_d) - 0.5*g*t.^2;
v = sqrt(v0^2 - 2*v0*g*t*sind(angle_d) + g^2*t.^2);

%Yuksekligin maksimum oldugu indexi buldum.
[hmax, index] = max(h);

fprintf("Projectile has maximum height(%.4fm) at time %.4f\n",hmax,t(index));

%Fonksiyonu iki parcaya ayirip islemleri uyguladim.
%h<5 veya v>35 oldugu aralıgı iki parca icin ayri ayri hesapladim.
x = t((h<5 | v>35) & t<t(index));
y = t((h<5 | v>35) & t>t(index));



fprintf("The height is less than 5 m or the speed is greater than 35 m/s on [%.4f,%.4f] or [%.4f,%.4f].\n",x(1),x(end),y(1),y(end));


plot(t,h,'r');
hold on;
plot(t,v,'g');
legend('Height','Speed');
xlabel('Time');
ylabel('Speed and Height');
title('The height and speed of a projectile');