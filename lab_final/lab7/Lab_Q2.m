%Caner Topuz
%090200358
%Lab_7 Q2

clear;
close all;
clc;

x = linspace(-pi,pi,200);
N = [1 5 10];
y_aprx = zeros(1,200,size(N,2));
y_real = x/pi;
sum = 0;
k = 1;

ii = 1;

for i = x
    jj = 1;
    for j = N
        sum = 0;
        for k= 1:j
            sum = sum + (-1)^(k+1)/k*sin(k*i);
        end
        sum = sum * (2/pi);
        y_aprx(1,ii,jj) = sum;
        jj = jj + 1;
    end
    ii = ii + 1;
end

plot(x,y_real,'c');
hold on;
plot(x,y_aprx(:,:,1),'r');
plot(x,y_aprx(:,:,2),'g');
plot(x,y_aprx(:,:,3),'b');


legend('Real','N=1','N=5','N=10');

for i = 1:size(N,2)
    fprintf('When N= %d sum of squared error values is %f\n',i,SSE_val(y_real,y_aprx(:,:,i)));
end