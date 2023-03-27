%Caner Topuz
%090200358
%Question-3

clear;
close all;
clc;

I = imread("Barbara.jpg");

[n1, n2, ~] = size(I);

n1 = round(n1/5);
n2 = round(n2/5);

I_new = zeros(n1,n2,'uint8'); 

ii = -4;

for i = 1:n1
    ii = ii + 5;
    jj = -4;
    for j= 1:n2
        jj = jj + 5;
        I_new(i,j) = mean(I(ii:ii+4,jj:jj+4,:),'all');
    end
end

imshow(I);
figure;
imshow(I_new);