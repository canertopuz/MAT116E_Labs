% Caner Topuz 090200358
clear;
clc;

x = input("Enter the interval[a,b]\n");

A = x(1) + (x(2)-x(1)) .* rand(7,5);
B = x(1) + (x(2)-x(1)) .* rand(7,7);
C = x(1) + (x(2)-x(1)) .* rand(4,7);

display(A);
display(B);
display(C);


%a

S = (B + B')/2;
display(S);

%b

A(:,2) = B(3,:);
display(A);

%c
sum = sum(B(1:8:end));
display(sum);
%d

ColVec = zeros(6,1);
ColVec(1:3) = A(2,2:4);
ColVec(4:6) = B([1,3,5],3);

display(ColVec);

%e

v1 = C(2,:);
v2 = B(5,:);

angle = acosd( (v1*v2') / (sqrt(v1*v1') * sqrt(v2*v2')));
display(angle);

%f

uv1 = v1 / (sqrt(v1*v1'));
uv2 = v2 / (sqrt(v2*v2'));
display(uv1);
display(uv2);

%g

P = A(:,(1:4));
display(P);

%h

D = B./(P*C);
display(D);
