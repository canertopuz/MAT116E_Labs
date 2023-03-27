% Caner Topuz
% 090200358
% Lab 4 Question 3
clear;
clc;
close all;

pic = imread('peppers.png');
% x logical arrayini hesapladım(Her kanal için 127den küçük ise 0 olacağından tek seferde bütün kanallar için hesapladım)
x = pic >= 127;
pic = 255*x;%127 den kücük elemanlar 0 ve diğerleri 255 olacağından 255 ile çarpıp sonuçu buldum.
pic = uint8(pic);
imshow(pic);