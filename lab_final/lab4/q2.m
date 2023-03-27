% Caner Topuz
% 090200358
% Lab 4 Question 2
clear;
clc;
close all;

pic = imread("photo.png");
imshow(pic);
figure;
[r, c, ~]  = size(pic);

pic1 = pic(1:r/2, 1:c/2, :);
pic2 = pic(1:r/2, c/2:end, :);
pic3 = pic(r/2:end, 1:end, :);

size1 = size(pic1);
size2 = size(pic2);
size3 = size(pic3);

pic1 = double(pic1);
pic2 = double(pic2);
pic3 = double(pic3);

pic1(:,:,1) = mean(pic1(:,:,1),'all');
pic1(:,:,2) = mean(pic1(:,:,2),'all');
pic1(:,:,3) = mean(pic1(:,:,3),'all');
pic1 = uint8(pic1);

pic2(:,:,1) = mean(pic2(:,:,1),'all');
pic2(:,:,2) = mean(pic2(:,:,2),'all');
pic2(:,:,3) = mean(pic2(:,:,3),'all');
pic2 = uint8(pic2);

pic3(:,:,1) = mean(pic3(:,:,1),'all');
pic3(:,:,2) = mean(pic3(:,:,2),'all');
pic3(:,:,3) = mean(pic3(:,:,3),'all');
pic3 = uint8(pic3);

res = ones(r,c,3,'uint8');
res(1:r/2, 1:c/2, :) = pic1;
res(1:r/2, c/2:end, :) = pic2;
res(r/2:end, 1:end, :) = pic3;
imshow(res);